cask "trainerroad" do
  version "2025.17.0.380"
  sha256 "92dfeae7b034d6a5f8c17347b01128c0b6c9975cd5e01a0385ee2f171a1ebac3"

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
