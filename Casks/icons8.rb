cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.4.3'
  sha256 '8b1a1bebc528f0e28a311b22d9db202586c25060f9c91ca036e78a5a0c68d9b0'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: '2acbe167d4fb9a4f3e46e28bf9a0ca3934b8f55371b90c94bcff1c3ecfc1d4d2'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
