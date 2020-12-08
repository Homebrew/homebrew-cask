cask "pictogram" do
  version "0.1,13"
  sha256 "fb35a21dcc548f0226453701632ebaa478ab8cb68fccfd0ae995cbb5c80d741b"

  url "https://pictogramapp.com/updates/v#{version.before_comma}%20%28Build%20#{version.after_comma}%29.zip"
  appcast "https://pictogramapp.com/updates/appcast.xml"
  name "Pictogram"
  desc "Customize and maintain app icons"
  homepage "https://pictogramapp.com/"

  app "Pictogram.app"
end
