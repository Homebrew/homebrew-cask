cask "marsedit" do
  version "4.6.1,10456"
  sha256 "3a7cfd9e7550232ff3d2b8bdd51ff9e539253fbbae4fecf76b3b7ca5f4d6db8e"

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
