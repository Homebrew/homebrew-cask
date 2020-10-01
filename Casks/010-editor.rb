cask "010-editor" do
  version "11.0"
  sha256 "ac0c92a9096e56bd6e382fd353c3b0a0363e2d423f2913d7550f89841aaf8b46"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  appcast "https://www.sweetscape.com/download/010editor/"
  name "010 Editor"
  homepage "https://www.sweetscape.com/"

  app "010 Editor.app"
end
