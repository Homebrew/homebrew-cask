cask 'lastpass' do
  version '4.28.0'
  sha256 '817392e4d63afb389df73b971f2406fbb52750a19a11657d1fd187f4640bef91'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  app 'LastPass.app'
end
