cask "syncalicious" do
  version "0.0.6"
  sha256 "ff43d46269d18c8ac86f7d49f1abae8100f0b0852a594e88925b8e1bccd028f0"

  url "https://github.com/zenangst/Syncalicious/releases/download/#{version}/Syncalicious.zip"
  name "Syncalicious"
  desc "Backup and synchronise preferences across multiple machines"
  homepage "https://github.com/zenangst/Syncalicious"

  depends_on macos: ">= :mojave"

  app "Syncalicious.app"

  uninstall quit: "com.zenangst.Syncalicious"

  zap trash: [
    "~/Library/Caches/com.zenangst.Syncalicious",
    "~/Library/Preferences/com.zenangst.Syncalicious.plist",
    "~/Library/Saved Application State/com.zenangst.Syncalicious.savedState",
  ]
end
