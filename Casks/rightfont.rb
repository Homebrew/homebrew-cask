cask :v1 => 'rightfont' do
  version '2.1.0'
  sha256 '8ce711b22c38c924ba80f77aa730993f769100a548a5ebbf3753dcb6bb27d8f4'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '5f32a791c0594eb3c3fe656c80874292a765f9ec7058424e962bfda9862097c0'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
