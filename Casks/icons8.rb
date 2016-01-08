cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.1'
  sha256 '1096a96c63af0b1993994364c8d17c9f2f1d353da4ae927775c835e6b63081f0'

  url 'http://icons8.com/icons8_mac_app'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          :sha256 => '9c3c191442cce028054d4bae65a2383620429005043540f4965a87e3d24aeffb'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8 App.app'
end
