cask 'picka' do
  version :latest
  sha256 :no_check

  url 'https://getpicka.com/downloads/Picka.zip'
  appcast 'https://getpicka.com/appcast-trial.xml'
  name 'Picka'
  homepage 'https://getpicka.com/'

  app 'Picka.app'
end
