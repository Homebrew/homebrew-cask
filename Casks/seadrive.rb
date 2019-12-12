cask 'seadrive' do
  version '1.0.8'
  sha256 'b1dbcddf02f96b7faa724a516ccf1e9e861dc41f03834f0d503970d37ec67f8c'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://www.seafile.com/en/download/'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
