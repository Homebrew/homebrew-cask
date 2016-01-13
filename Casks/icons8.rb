cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.1'
  sha256 '1096a96c63af0b1993994364c8d17c9f2f1d353da4ae927775c835e6b63081f0'

  url 'http://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          :checkpoint => '85c39d19ae47a9ed42f95d8671bf5b7e5f3a3d2cf44a7dbc6615e17d6332e76e'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8 App.app'
end
