cask 'hands-off' do
  version '3.2.1'
  sha256 'cbbcf993d2319d776b7ec1ac35fc4569cc97490fcce6af69e7cbe55464cd351f'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'ee18f60eb11947b00737cb239eb2bdaf6d011e6b03c8bdcb9335adffb2ac71b1'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
