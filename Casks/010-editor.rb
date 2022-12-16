cask "010-editor" do
  version "13.0.1"
  sha256 "8cf8c6b38a0d08b4308ebdc4cc7fabb4884c41b321a92becc4be0b87e7c3fafe"

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
