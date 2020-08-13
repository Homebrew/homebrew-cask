cask "pacifist" do
  version "3.6.2"
  sha256 "e8bd4595462e2cb6f900705ef69fdc9f044aea1e2759e347c3e9667c757fd6af"

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi"
  name "Pacifist"
  homepage "https://www.charlessoft.com/"

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
