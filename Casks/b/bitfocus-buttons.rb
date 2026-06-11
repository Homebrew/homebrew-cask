cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.6.5,5633,6b816e73"
  sha256 arm:   "4846390709421bd8c4f8fa7ebdb8950206ea5798d569d4335ff9a32470317ca5",
         intel: "8f54659222dc26a8b2b83d91451e30b77cb1f0b5fbc4fb3063c12c2ce3919eba"

  url "https://s4.bitfocus.io/builds/buttons/bitfocus-buttons-mac-#{arch}-#{version.csv.second}-#{version.csv.third}.pkg"
  name "Bitfocus Buttons"
  desc "Unified control and monitoring software"
  homepage "https://bitfocus.io/buttons"

  livecheck do
    url "https://api.bitfocus.io/v1/product/buttons/packages?branch=stable&limit=150"
    regex(/buttons[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)*)[._-](\h+)\.pkg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{package["version"]&.tr("v", "")},#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on :macos

  pkg "bitfocus-buttons-mac-#{arch}-#{version.csv.second}-#{version.csv.third}.pkg"

  uninstall pkgutil: "io.bitfocus.buttons.pkg"

  zap trash: [
    "~/Library/Application Support/Bitfocus Buttons",
    "~/Library/Caches/io.bitfocus.buttons",
    "~/Library/Preferences/io.bitfocus.buttons.plist",
    "~/Library/WebKit/io.bitfocus.buttons",
  ]
end
