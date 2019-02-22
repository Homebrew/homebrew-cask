cask 'ocenaudio' do
  version :latest
  sha256 :no_check

  url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  app 'ocenaudio.app'
end
