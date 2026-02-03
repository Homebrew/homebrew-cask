cask "companion-satellite" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "2.7.0,586,6c3ccfa"
  sha256 arm:   "f02ff241dba9c8e7b21f183daf4c92e0da7261b2e4f5b2adb6a695729b43b236",
         intel: "ccec8925df3528c51a1791cb1c1ea6a355c911a6798076f8a2aaa6e3a88b07fc"

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

  depends_on macos: ">= :monterey"

  app "Companion Satellite.app"

  zap trash: [
    "~/Library/Application Support/companion-satellite",
    "~/Library/Application Support/satellite",
  ]
end
