cask "retrobatch" do
  version "1.4.4,963"
  sha256 "0307da1a3ea5cda76f616433370522c01fc3c1b5b794968f98892e0e22afc872"

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
