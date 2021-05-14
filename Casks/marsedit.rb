cask "marsedit" do
  version "4.4.13,9552"
  sha256 "1ae432d53c4dd3abcec4e0a10a9aa6cd818a11230b97fbceebbe8e7ee353bec0"

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
