cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.4.17,4802,9ab18240"
  sha256 arm:   "13d8270e0e53bf2e91b1e0d45a9d75956028cb16315a5f2f2a0017b7c314b06e",
         intel: "8454297971d73b3b89602557ffee795d496afc862590cccbe59f292c035dba7b"

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

  pkg "bitfocus-buttons-mac-#{arch}-#{version.csv.second}-#{version.csv.third}.pkg"

  uninstall pkgutil: "io.bitfocus.buttons.pkg"

  zap trash: [
    "~/Library/Application Support/Bitfocus Buttons",
    "~/Library/Caches/io.bitfocus.buttons",
    "~/Library/Preferences/io.bitfocus.buttons.plist",
    "~/Library/WebKit/io.bitfocus.buttons",
  ]
end
