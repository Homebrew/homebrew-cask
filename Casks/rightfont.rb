cask :v1 => 'rightfont' do
  version '1.2.0'
  sha256 '345f0d7b7d8eb834fd30287d0d81b7b98759ede682c50c6c8861fd9a0c12be19'

  url "http://rightfontapp.com/downloads/#{version}/rightfont.zip"
  name 'RightFont'
  appcast 'http://rightfontapp.com/update/appcast.xml',
          :sha256 => '39d29124d62ccaeca47650ba9c47796904b16cc24047892ec4addd71faa709d0'
  homepage 'http://rightfontapp.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'RightFont.app'
end
