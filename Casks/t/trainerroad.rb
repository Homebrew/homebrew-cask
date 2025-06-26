cask "trainerroad" do
  version "2025.24.2.390"
  sha256 "d00d5c22ad07f5e245c232caa41e65bcfc11dbf8b0e893651aa5acedd11bbccc"

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

  depends_on macos: ">= :el_capitan"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"

  caveats do
    requires_rosetta
  end
end
