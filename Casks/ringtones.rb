cask "ringtones" do
  version "1.1.3"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/ringtones/Ringtones.zip"
  name "Ringtones"
  homepage "http://thelittleappfactory.com/ringtones/"

  livecheck do
    url "http://files.thelittleappfactory.com/ringtones/appcast.xml"
    strategy :sparkle
  end

  app "Ringtones.app"
end
