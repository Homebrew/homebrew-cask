cask 'seafile-client' do
  version '6.1.5'
  sha256 '183db605f4cb364c24baeb9f7faab3e1b80a35c87ccdd8cb4fef02d084af3123'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
