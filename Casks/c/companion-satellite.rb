cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "3.4.0,722,8bc2f14"
  sha256 arm:   "dfd19ff649b72426ffaad6dd7fdba491e2ee2ab3d04b051e50150ae1febc4eea",
         intel: "1cc097d222663f502e7126a000872cdcd13be1294e89b5e2aa650457b6507710"

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

  depends_on macos: :monterey

  app "Companion Satellite.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/remote.companion.bitfocus.no.sfl*",
    "~/Library/Application Support/companion-satellite",
    "~/Library/Application Support/satellite",
    "~/Library/Preferences/remote.companion.bitfocus.no.plist",
  ]
end
