cask 'hands-off' do
  version '3.0.2'
  sha256 'e954858da72a6f05194feb8cc193e3a2a10d33de38381f461b8894be95bde56e'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "http://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '3a5f3878cc4cd3a658d3969d4778222e027aefe2dd65a4836cd64ff4f671cd0e'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'
  license :commercial

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
