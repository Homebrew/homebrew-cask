cask 'seafile-client' do
  version '6.1.7'
  sha256 '7d2c1c05d4e62af083d8d68732944fae0190a27afc80c8e144e33a45c8cbcd4b'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
