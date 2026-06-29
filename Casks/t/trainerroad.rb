cask "trainerroad" do
  version "2026.25.0.463"
  sha256 "6bbf5ab32a7be1fdbeb167b5ed89e8a0ebc11e8e9691a691cc135c982b4e2666"

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
