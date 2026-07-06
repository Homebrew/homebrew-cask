cask "trainerroad" do
  version "2026.26.0.464"
  sha256 "06cc7306e7abbd18ad04b15302f94e3ecc2a301c1d0a6544ee5d5b5fe62c56dd"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg",
      verified: "trainrdtrcmn01un1softw01.blob.core.windows.net/"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  livecheck do
    url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
    regex(/TrainerRoad[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"

  caveats do
    requires_rosetta
  end
end
