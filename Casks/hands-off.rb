cask 'hands-off' do
  version '3.2.4'
  sha256 '057c750c586178b3d149b3b49bc14a9097a6bccff850ac9ff370b4195860b45b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'b78b5f03082c5e6dd91963b3191f2dd6731abc7fd2252ef5ba7caa7f5fc7ce89'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
