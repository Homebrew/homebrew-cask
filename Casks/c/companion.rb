cask "companion" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "5.0.4,9717,a69c14dec2"
  sha256 arm:   "893becb2ac02c30909de2e469d557b37407b1500387c022dff73d08446ad9f81",
         intel: "11c1e6168cc65fe23656fe6fb1dd939ac4f7a8c33ab7b0f53dafa6ec108bedf5"

  url "https://cf-pub.bitfocus.io/companion/companion/companion-mac-#{arch}-#{version.csv.first}-#{version.csv.second}-stable-#{version.csv.third}.dmg"
  name "Bitfocus Companion"
  desc "Streamdeck extension and emulation software"
  homepage "https://bitfocus.io/companion"

  livecheck do
    url "https://api.bitfocus.io/v1/product/companion/packages?branch=stable&limit=150"
    regex(/companion[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[+-](\d+(?:\.\d+)*)[._-]stable[._-](\h+)\.dmg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: :monterey

  app "Companion.app"

  zap trash: [
    "~/Library/Application Support/@companion-app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test-companion.bitfocus.no.sfl*",
    "~/Library/Application Support/companion",
    "~/Library/Application Support/companion-launcher",
    "~/Library/Preferences/companion-nodejs",
    "~/Library/Preferences/companion.bitfocus.no.plist",
  ]
end
