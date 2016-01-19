cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.1'
  sha256 '1096a96c63af0b1993994364c8d17c9f2f1d353da4ae927775c835e6b63081f0'

  url 'http://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: '1f0768b3ef85dc432e746e7cd33e9d0c473c38caeeda900ed09131116d92c00b'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8 App.app'
end
