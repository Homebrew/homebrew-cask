cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.6.4,5627,158e8fbf"
  sha256 arm:   "b480aa062c3b3c9e3c6332276f675849099b620ee428457fbb8d095131ea1d9d",
         intel: "78768e83044a174b647be3e86bc4e6cdd84248ef2b5c17f02d47cbed22e4c7ee"

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
