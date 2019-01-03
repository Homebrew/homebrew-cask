cask 'seadrive' do
  version '1.0.0'
  sha256 'f7a1a1fd46fc204784444a91e2b8d412b905f6d874cca8fb5ebefdd65f1ac927'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
