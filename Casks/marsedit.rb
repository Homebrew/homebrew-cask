cask "marsedit" do
  version "4.5.1,9675"
  sha256 "09999532a496504dfbd6adeccf042bdfe9b8dbf15315d2756d2379d5474d2cef"

  url "https://redsweater.com/marsedit/MarsEdit#{version.before_comma}.zip"
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
