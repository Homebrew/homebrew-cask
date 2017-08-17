cask 'hands-off' do
  version '3.2.2'
  sha256 '5feba20a5557de862078d053d528d0dc3869cdd4bc8a0dd165628f2a0bc95442'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'ac2dcf5861f8bed9a7015c3475addedf4384fdc72aa921bb83a6cdb276fd650e'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
