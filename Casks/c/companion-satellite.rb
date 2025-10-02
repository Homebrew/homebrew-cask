cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "2.4.0,535,7ed8c76"
  sha256 arm:   "598e01564de16f3a8b6410c6775abd5b873342da4046659b7c51deb40f1a66c5",
         intel: "56d9326bb24b57a2daba2fcdca2f05c05396eb8b197a7393d6c389f4d35fe4fd"

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

  depends_on macos: ">= :big_sur"

  app "Companion Satellite.app"

  zap trash: [
    "~/Library/Application Support/companion-satellite",
    "~/Library/Application Support/satellite",
  ]
end
