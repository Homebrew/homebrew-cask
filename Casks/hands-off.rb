cask 'hands-off' do
  version '3.1.3'
  sha256 'd1c0d8071452fd5b1fdf65d0524a26a144c7760d184239bbe5db1708e04dc047'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'e00753abb33ff737c6a412204a1769f2a20d20b5ae4a099c0a47ce35da56cf14'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
