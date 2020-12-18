cask "010-editor" do
  version "11.0.1"
  sha256 "41624c8fd919f88ce513654d1c55db2b86b8d42a95bde667d7adfb85e53a3d5e"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  appcast "https://www.sweetscape.com/download/010editor/"
  name "010 Editor"
  homepage "https://www.sweetscape.com/"

  app "010 Editor.app"
end
