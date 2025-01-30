cask "startupfolder" do
  version "1.1.1"
  sha256 "3cc2b5676d05e082ed0851d8580f797cd09738ee35a5d4ea88cc612a2893a0ce"

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
