cask "companion" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "4.1.5,8509,0dbab2a070"
  sha256 arm:   "9ce9872cb553f279a0393380bc7bef6acbf1c9f6f6d681a22d319d58f67eb0ca",
         intel: "0f896d643d4199ce022b9c1220e35b419fbbd76bde5f4753926a67481ab4c982"

  url "https://s4.bitfocus.io/builds/companion/companion-mac-#{arch}-#{version.csv.first}+#{version.csv.second}-stable-#{version.csv.third}.dmg"
  name "Bitfocus Companion"
  desc "Streamdeck extension and emulation software"
  homepage "https://bitfocus.io/companion"

  livecheck do
    url "https://api.bitfocus.io/v1/product/companion/packages?branch=stable&limit=150"
    regex(/companion[._-]mac[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\+(\d+(?:\.\d+)*)[._-]stable[._-](\h+)\.dmg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

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
