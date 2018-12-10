cask 'nightowl' do
  version :latest
  sha256 :no_check

  url 'https://nightowl.kramser.xyz/files/NightOwl.dmg'
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
