cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.3'
  sha256 '20273e310a3df897eb688f83346eeed0ec60601387adf6657bc37d2dd929534c'

  url 'https://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: 'e16c368bbe8ef0373a0132589cf2abaec59dc83c6a979bfe7f0ff4ebd26d8ff1'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8.app'
end
