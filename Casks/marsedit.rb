cask "marsedit" do
  version "4.5.5,9750"
  sha256 "03bd0354ccd8616cccd0bd35b1cd4c571430910f78f0c0c8a6d31e288fb18709"

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
