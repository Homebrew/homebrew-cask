cask "companion" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  sha256 arm:   "ff4793e7b144903bedf7296cfdfcc277b9bff5ff891317d7c7f08349fac29ffe",
         intel: "da93a0858f8da67c4f28e775541762c40bec9ec8794f38fe2048aaef238835ae"

  on_arm do
    version "5.1.2,10019,98d5d4e1a1"
  end
  on_intel do
    version "5.1.2,10019,98d5d4e1a1"
  end

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

  depends_on macos: :ventura

  app "Companion.app"

  zap trash: [
    "~/Library/Application Support/@companion-app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test-companion.bitfocus.no.sfl*",
    "~/Library/Application Support/companion",
    "~/Library/Application Support/companion-launcher",
    "~/Library/Preferences/companion-nodejs",
    "~/Library/Preferences/companion.bitfocus.no.plist",
    "~/Library/Preferences/test-companion.bitfocus.no.plist",
  ]
end
