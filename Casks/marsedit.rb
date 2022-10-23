cask "marsedit" do
  version "4.6.3,10492"
  sha256 "fe2bcdb0576353b8c2a748c00203c4b3a0f5b2ce2bb339c9188e8aa3b856f570"

  url "https://redsweater.com/marsedit/MarsEdit#{version.csv.first}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
