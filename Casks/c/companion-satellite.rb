cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "3.6.1,770,43fdde5"
  sha256 arm:   "8369cec358ef3839861f8d69bde764ccc18a40c03f7ff5b233da40969f0d93e0",
         intel: "6b4cda1ecc969d457f89704b3092b76e3c44d80cfd90e8ca6c487893f31d0cbe"

  url "https://s4.bitfocus.io/builds/companion-satellite/companion-satellite-#{arch}-#{version.csv.second}-#{version.csv.third}.dmg"
  name "Bitfocus Satellite"
  desc "Satellite connection client for Bitfocus Companion"
  homepage "https://bitfocus.io/companion-satellite"

  livecheck do
    url "https://api.bitfocus.io/v1/product/companion-satellite/packages?branch=stable&limit=150"
    regex(/companion[._-]satellite[._-]#{arch}[._-]v?(\d+(?:\.\d+)*)[._-](\h+)\.dmg/i)
    strategy :json do |json, regex|
      json["packages"]&.map do |package|
        next if package["target"] != "mac-#{livecheck_arch}"

        version = package["version"]&.tr("v", "")
        next if version.blank?

        match = package["uri"]&.match(regex)
        next if match.blank?

        "#{version},#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: :ventura

  app "Companion Satellite.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/remote.companion.bitfocus.no.sfl*",
    "~/Library/Application Support/companion-satellite",
    "~/Library/Application Support/satellite",
    "~/Library/Preferences/remote.companion.bitfocus.no.plist",
  ]
end
