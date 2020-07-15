cask 'seadrive' do
  version '2.0.4'
  sha256 '51e6b7588a2c3d1a3b8141890edf3ae4ae237b1162eeee7f7becff66a6aac6da'

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
