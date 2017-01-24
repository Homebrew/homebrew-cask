cask 'sunlogin-remote' do
  version '2.1'
  sha256 '046a64a68524bd526071acd695c5ee7de7b5c90b5709f3566575445a6e9a9530'

  url "https://download.oray.com/sunlogin/mac/SunloginRemote_#{version}.dmg"
  name 'Sunlogin Remote'
  name '向日葵控制端'
  homepage 'https://sunlogin.oray.com/'

  app 'Sunlogin Remote.app'
end
