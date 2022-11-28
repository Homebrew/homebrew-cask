cask "megxeditor" do
  version "1.1.1"
  sha256 "a08d3f34b26dc8d1153319af64410c770c38abc4e29ed1ebd728bf7c14121c25"

  url "https://www.rjmmusic.com/downloads/MEGX/MEGXEditor-#{version}.dmg"
  name "RJ Music Mini Effect Gizmo X Editor"
  desc "Editor software to configure RJM mini effect gizmo X MIDI audio loop switcher"
  homepage "https://www.rjmmusic.com/"

  livecheck do
    url "https://www.rjmmusic.com/wp-json/wp/v2/pages/6614"
    regex(/href=.*?MEGXEditor[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "MEGXEditor.app"
end
