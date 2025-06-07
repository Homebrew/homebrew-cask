cask "companion" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "4.0.0,8052,68859c8a39"
  sha256 arm:   "0a954c2aef0aa35419faaa3aca4af0e12a2f22a2ce7d3cf8b3a8a5f215388600",
         intel: "f701eaccd9e5f9a438828d16514745ffb53398ecc70ad47f2b434759a916f35c"

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
