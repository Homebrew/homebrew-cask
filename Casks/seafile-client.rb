cask 'seafile-client' do
  version '7.0.6'
  sha256 'f7b891dc5c858d6f4a8ccf43fcd54e403f37fbd950ee507eae9fc78f0ec75e83'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
