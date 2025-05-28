cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "2.1.0,486,e5ec273"
  sha256 arm:   "0911630a73f4fe778eaef8c0a476e75574d3ba95079efe5c4555d5a04e2c783a",
         intel: "74d9ff6f7f5d1b9a1053d3f79b9461e5cbdf69a7eb9523a7f8064cd841afa569"

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
