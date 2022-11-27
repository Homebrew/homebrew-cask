cask "rjmmusic-mini-effect-gizmo-x-editor" do
  version "1.1.1"
  sha256 "a08d3f34b26dc8d1153319af64410c770c38abc4e29ed1ebd728bf7c14121c25"

  url "https://www.rjmmusic.com/downloads/MEGX/MEGXEditor-#{version}.dmg"
  name "rjmmusic-mini-effect-gizmo-x-editor"
  desc "Editor software to configure RJM mini effect gizmo X MIDI audio loop switcher"
  homepage "https://www.rjmmusic.com/"

  livecheck do
    url "https://www.rjmmusic.com/downloads"
    regex(/href=.*?MEGXEditor-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "MEGXEditor.app"
end
