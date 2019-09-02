cask 'hands-off' do
  version '4.3.0'
  sha256 '836da734a43d5434b25fca893ed58363c79af288b2c7d57785cb132e6a534a2f'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml"
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
