cask "sketch-toolbox" do
  version "0.5.1,051"
  sha256 :no_check

  url "http://sketchtoolbox.com/Sketch%20Toolbox.zip"
  name "Sketch Toolbox"
  homepage "http://sketchtoolbox.com/"

  livecheck do
    url "http://sketchtoolbox.com/updates/appcast.xml"
    strategy :sparkle
  end

  app "Sketch Toolbox.app"
end
