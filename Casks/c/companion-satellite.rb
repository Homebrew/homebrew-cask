cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "3.7.0,787,1514040"
  sha256 arm:   "bf43de7ebc4d82dcfc8af096bf71b9b3940a711add887fbfc120ce9fa3c5dece",
         intel: "3f0818bc1d6d8ad72618c793abbca2b8e7f0a7ff1051111a46c47ef2e53dca39"

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
