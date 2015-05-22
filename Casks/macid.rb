cask :v1 => 'macid' do
  version '1.2.2'
  sha256 '6dd7ad1992355be510df33ee6c0209690c6d3522a93afa9d6750b999b36c67be'

  url "http://macid.co/app/#{version}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'http://macid.co/'
  license :gratis

  app 'MacID.app'

  depends_on :macos => '>= :yosemite'

  zap :delete => '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'

  caveats <<-END_CAVEATS.gsub(/^\s+/, '')
    You need a Mac with Bluetooth LE for this app to work.
    You also need an iOS device with Bluetooth LE running iOS 8 or later to run
    the companion iOS app: http://itunes.apple.com/app/id948478740
    Please check #{homepage}#compatibility for details.
  END_CAVEATS
end
