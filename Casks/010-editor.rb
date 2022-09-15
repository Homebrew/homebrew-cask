cask "010-editor" do
  version "13.0"
  sha256 "dab260020afc6c480c4c41c8f9c272a7402484319a4887e143508e05aa152e6b"

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
