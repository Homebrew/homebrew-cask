cask "retrobatch" do
  version "1.5,1062"
  sha256 "786ea08770b80ff859f93c622980d352296ac3d2a0068d160823e1ad0082f11d"

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
