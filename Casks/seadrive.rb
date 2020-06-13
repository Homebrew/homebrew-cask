cask 'seadrive' do
  version '2.0.2'
  sha256 '700d3274dff05714c4c9d8ded9fc8ebbbf0bb0ddd9e91d30914c1ffc78595406'

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
