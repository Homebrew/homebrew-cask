cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "1.4.18,4805,0b430713"
  sha256 arm:   "dde564c90e1727abd59e49bae876dc03b9097b7bd921b7abc3b51f341c05e3f8",
         intel: "94bbc0a893d252f04c9fd3a7276a76c66df0a7e8c3c6753dc489901d744a5168"

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
