cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.5'
  sha256 '448dba94aded9064969df658ce1df7177fb23ffd8e8a1d7a14c469b2ce87b19f'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: '2acbe167d4fb9a4f3e46e28bf9a0ca3934b8f55371b90c94bcff1c3ecfc1d4d2'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
