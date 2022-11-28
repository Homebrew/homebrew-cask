cask "mmgteditor" do
  version "4.9.1"
  sha256 "10e37d4443b107eae1f735a8278fbb06d9776c13ec9626703d02757718086cee"

  url "https://www.rjmmusic.com/downloads/MMGT/MMGTEditor-#{version}.dmg"
  name "RJM Music Mastermind GT Editor"
  desc "Editor software to configure RJM Mastermind GT midi pedalboard"
  homepage "https://www.rjmmusic.com/"

  livecheck do
    url "https://www.rjmmusic.com/wp-json/wp/v2/pages/6614"
    regex(/href=.*?MMGTEditor[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "MMGTEditor.app"
end
