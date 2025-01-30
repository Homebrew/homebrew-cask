cask "startupfolder" do
  version "1.1.2"
  sha256 "9096aafe3b8be6b61416f2ba7cabd64fca08911598536cd0d819eadf954e0873"

  url "https://files.lowtechguys.com/releases/StartupFolder-#{version}.dmg"
  name "Startup Folder"
  desc "Run anything at startup by simply placing it in a special folder"
  homepage "https://lowtechguys.com/startupfolder"

  livecheck do
    url "https://files.lowtechguys.com/startupfolder/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "StartupFolder.app"

  uninstall launchctl:  "com.lowtechguys.StartupFolder",
            quit:       "com.lowtechguys.StartupFolder",
            login_item: ["com.lowtechguys.StartupFolder", "StartupFolder.app"]

  zap trash: [
        "~/Library/Caches/startup-folder-favicons/",
        "~/Library/HTTPStorages/com.lowtechguys.StartupFolder",
        "~/Library/Preferences/com.lowtechguys.StartupFolder.plist",
        "~/Library/Saved Application State/com.lowtechguys.StartupFolder.savedState",
      ],
      rmdir: "~/Startup"
end
