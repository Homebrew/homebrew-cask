cask "retrobatch" do
  version "1.4.5,1024"
  sha256 "bcfdde7006a8aa207ff7d9f8327787cb22c225a224575b5af12a99d45860eeb6"

  url "https://flyingmeat.com/download/Retrobatch-#{version.csv.first}.zip"
  name "Retrobatch"
  desc "Batch image processor"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"
end
