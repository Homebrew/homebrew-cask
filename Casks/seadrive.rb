cask 'seadrive' do
  version '1.0.10'
  sha256 '8ff20f7f7d79e7afe9ff2ec2dcd413e0a47958f1022387bd2731e8c5903b04a8'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
