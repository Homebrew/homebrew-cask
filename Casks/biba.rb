cask 'biba' do
  version '3.14.3972'
  sha256 '87e1abdc697959a70713e228a2d97f1e76785251f75ac2f63ec6ed45e2d802fb'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: '30eeabb10721a3989ccf226b9dadded4c0eda0d6b32337272dfa71d8f8584032'
  name 'Biba'
  homepage 'https://www.biba.com/'

  app 'Biba.app'
end
