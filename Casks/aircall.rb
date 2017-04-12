cask 'aircall' do
  version '1.3.14'
  sha256 'e8250c8d6be5661d38c0e13253e5aa624c354f2ba378be2ea12748181b0fe38b'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: 'ac27e0f98c7bd60aa6f3971f29b53eca669522620a53b69bb9cbb83e93229dce'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
