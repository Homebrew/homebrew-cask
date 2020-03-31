cask 'misu' do
  version '0.3.1'
  sha256 '168e6380fd57790ebe83c484abd86eb44f8513a21a5b3cd4fb22370318a3ac4d'

  # electron-app-source.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://electron-app-source.s3.amazonaws.com/Misu-#{version}.dmg"
  name 'Misu'
  homepage 'https://www.misu.app/'

  app 'Misu.app'
end
