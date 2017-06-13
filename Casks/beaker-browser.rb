cask 'beaker-browser' do
  version :latest
  sha256 :no_check

  # download.beakerbrowser.net/download was verified as official when first introduced to the cask
  url 'https://download.beakerbrowser.net/download/latest/osx'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
