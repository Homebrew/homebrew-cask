cask 'rightfont' do
  version '2.4.0'
  sha256 '05207bac5dbfc059a0e6d7f106d42367a66c6184309b285a72711ab1137747ee'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '47fb2a9e852f2370bd8eca7c93505c56b3444a213a5efffd47acb842d50d17f4'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
