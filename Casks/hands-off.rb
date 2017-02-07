cask 'hands-off' do
  version '3.1.4'
  sha256 'c20e04681d8ef5a8ce16183ef1fb0df389235fe0eaa1dbd91397b3bff43ef397'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'b0bc691a54b6c00c58f6b30034d82a1a3f9e7a119ca003e63d687c48a45bc496'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
