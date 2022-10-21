cask "marsedit" do
  version "4.6.2,10486"
  sha256 "eaa7b9ba51835a7cc1fb5da185c641a9ecb4f8b5e37adac5a45c7e2509af6939"

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
