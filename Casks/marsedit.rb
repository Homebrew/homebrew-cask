cask "marsedit" do
  version "4.5.9,10278"
  sha256 "792a1a50e3a8eecf2478ccc3f20723cca90a180b640fd519d8b640f575b4d20d"

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
