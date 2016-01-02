cask 'rightfont' do
  version '3.0.1'
  sha256 '963c035b382e1f4c62991ec94f56b437d5e10d47e6b6996bb43c27a5f8828105'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '2cf47c0892e6c320732249f9081b950e208efbcd04141414e0dfeb20c174ee4a'
  name 'RightFont'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
