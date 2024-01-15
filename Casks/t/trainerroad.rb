cask "trainerroad" do
  version "2024.1.1.299"
  sha256 "ebeb22a9d25051114d0512a8260e9b2c54aa7f8b7c2cd7bcf4753e706b086ab7"

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
end
