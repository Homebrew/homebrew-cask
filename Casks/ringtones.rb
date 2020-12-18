cask "ringtones" do
  version "1.1.3"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/ringtones/Ringtones.zip"
  appcast "http://files.thelittleappfactory.com/ringtones/appcast.xml"
  name "Ringtones"
  homepage "http://thelittleappfactory.com/ringtones/"

  app "Ringtones.app"
end
