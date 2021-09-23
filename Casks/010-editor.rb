cask "010-editor" do
  version "12.0"
  sha256 "f1b2503e7115fc816f497267c611a9af23df6aa7bd08b6398ba29b80869db2be"

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  name "010 Editor"
  homepage "https://www.sweetscape.com/"

  livecheck do
    url "https://www.sweetscape.com/download/010editor/"
    strategy :page_match
    regex(/Version:?\s*(\d+(?:\.\d+)*),\s*macOS/i)
  end

  app "010 Editor.app"
end
