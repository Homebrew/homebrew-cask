cask 'spotmenu' do
  version '1.4.2'
  sha256 '70ad304de372c6499f79af226c453706c2ee2703582a09a6ddacb950c6342efc'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom',
          checkpoint: '237bcad51ebd9d72bb214e9beb367b550faba5e6d47d04e9e6b4332c60738f2a'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  app 'SpotMenu.app'
end
