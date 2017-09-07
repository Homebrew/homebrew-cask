cask 'seafile-client' do
  version '6.1.0'
  sha256 'df0c6bbb261ee0b5f2042539d823d330e0d5775084798015e406f901fc37d148'

  # seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'https://www.seafile.com/'

  app 'Seafile Client.app'
end
