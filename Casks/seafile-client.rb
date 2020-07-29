cask 'seafile-client' do
  version '7.0.8'
  sha256 'dd0fe6b956719eb473b6fa4ac6fcf1474d5c78d4f2080eecd4060ca1af7ea0af'

  # seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
