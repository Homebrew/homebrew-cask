cask "bitfocus-buttons" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "1.8.10,7301,16376c94"
    sha256 "b4e9242318fe3f36e50e4fd0f3021e381a6243b015848d5446c3199d6f2f2902"
  end
  on_intel do
    version "1.6.11,5658,cea7b6bf"
    sha256 "896be2bae110109c5b22b4136c01b3be38f95d47f466c7b4e6040b0a17af5342"
  end

  url "https://cf-pub.bitfocus.io/buttons/buttons/bitfocus-buttons-mac-#{arch}-#{version.csv.first}-#{version.csv.second}-stable-#{version.csv.third}.pkg"
  name "Bitfocus Buttons"
  desc "Unified control and monitoring software"
  homepage "https://bitfocus.io/buttons"

  livecheck do
    url "https://api.bitfocus.io/v1/product/buttons/packages?branch=stable&limit=150"
    regex(/buttons[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]stable[._-](\h+)\.pkg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on :macos

  pkg "bitfocus-buttons-mac-#{arch}-#{version.csv.first}-#{version.csv.second}-stable-#{version.csv.third}.pkg"

  uninstall pkgutil: "io.bitfocus.buttons.pkg"

  zap trash: [
    "~/Library/Application Support/Bitfocus Buttons",
    "~/Library/Caches/io.bitfocus.buttons",
    "~/Library/Preferences/io.bitfocus.buttons.plist",
    "~/Library/WebKit/io.bitfocus.buttons",
  ]
end
