cask "sketch-toolbox" do
  version "0.5.1"
  sha256 :no_check

  url "http://sketchtoolbox.com/Sketch%20Toolbox.zip"
  name "Sketch Toolbox"
  desc "Plugin manager for Sketch"
  homepage "http://sketchtoolbox.com/"

  livecheck do
    url "http://sketchtoolbox.com/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Sketch Toolbox.app"
end
