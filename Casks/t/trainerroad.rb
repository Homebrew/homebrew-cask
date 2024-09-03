cask "trainerroad" do
  version "2024.34.0.341"
  sha256 "73baa8cce490b2136eef285fb294871911c776121f4aeeca9b9d039396685e7b"

  url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/TrainerRoad-#{version}.dmg",
      verified: "trainrdtrcmn01un1softw01.blob.core.windows.net/"
  name "TrainerRoad"
  desc "Cycling training system"
  homepage "https://www.trainerroad.com/"

  livecheck do
    url "https://trainrdtrcmn01un1softw01.blob.core.windows.net/installers/mac/v001/Production/latest-mac.yml"
    regex(/url:\s*TrainerRoad[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :el_capitan"

  app "TrainerRoad.app"

  zap trash: "~/Library/Application Support/TrainerRoad"

  caveats do
    requires_rosetta
  end
end
