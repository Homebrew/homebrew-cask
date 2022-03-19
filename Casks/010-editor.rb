cask "010-editor" do
  version "12.0.1"
  sha256 "336cb1b7e055d3638e562e63539e90db4a795f738d67ca377c2e9dfac8670924"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  name "010 Editor"
  desc "Text editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    regex(/Version:?\s*(\d+(?:\.\d+)+),\s*macOS/i)
  end

  app "010 Editor.app"
end
