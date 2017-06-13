cask 'icamsource' do
  if MacOS.version <= :mountain_lion
    version '2.7.2'
    sha256 '21ab85b8914d2da18f38675b44635573e9693f442d9810ce93df012e9cba43bb'
  else
    version '2.9'
    sha256 'bc04eb17400a21331daee7d5d6b554b32a10ab70d53fe0ba4030c95761785bcd'
  end
  url "http://skjm.com/icam/iCamSource#{version}.dmg"
  appcast 'http://skjm.com/sparkle/iCamSource.xml',
          checkpoint: 'f150f639b74612df8cfad97978c94a356cd111c08381e2b64b58cfa2065e2f54'
  name 'iCamSource'
  homepage 'http://skjm.com/icam/support.php'

  app 'iCamSource.app'
end
