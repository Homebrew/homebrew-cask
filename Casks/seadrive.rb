cask 'seadrive' do
  version '1.0.5'
  sha256 '6c1ddeb21ec89e78d0c34f80d8540ab7bc73a930b607bafaae31fe138475783e'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
