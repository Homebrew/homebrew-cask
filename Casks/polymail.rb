cask 'polymail' do
  version :latest
  sha256 :no_check

  url 'https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  app 'Polymail.app'
end
