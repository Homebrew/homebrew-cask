cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.3'
  sha256 '820b3eb24c6868d272f995d44220aa121c1483be30c676a19ce465229712982c'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml',
          checkpoint: '622623074f09dcca53259515f60d9d0302c5b675e45fb0ec3963dcb1dce9e460'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
