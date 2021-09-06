cask "pacifist" do
  version "3.6.2,29642"
  sha256 "dac6ef23f81494ff69d74d99aa36187484a207e7e0142f395160f511c18cee6a"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version.before_comma}.dmg"
  name "Pacifist"
  desc "Extract files and folders from package files, disk images, and archives"
  homepage "https://www.charlessoft.com/"

  livecheck do
    url "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi"
    strategy :sparkle
  end

  auto_updates true

  app "Pacifist.app"
  qlplugin "Pacifist.qlgenerator"

  preflight do
    system_command "/usr/bin/tar", args: [
      "--extract",
      "--file",
      "#{staged_path}/Pacifist.app/Contents/Resources/QLPlugin.tbz",
      "--directory",
      staged_path,
    ]
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.charlessoft.pacifist.sfl2",
    "~/Library/Preferences/com.charlessoft.pacifist.plist",
    "~/Library/QuickLook/Pacifist.qlgenerator",
    "~/Library/Saved Application State/com.charlessoft.pacifist.savedState",
  ]
end
