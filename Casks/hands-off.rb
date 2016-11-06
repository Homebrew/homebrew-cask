cask 'hands-off' do
  version '3.1.2'
  sha256 'c3efcb883282055d1e51e9efa295d67d419b8c3c5427fc03bce70b36ac710673'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '7bcc930a46fb9b9bccfce799a66bbbfe7131320209573337e15b1fa8ef1f7caf'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
