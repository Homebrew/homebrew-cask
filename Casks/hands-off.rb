cask 'hands-off' do
  version '3.0.3'
  sha256 '73eb32b2251816d138defaca5005a6943880bf1906f054bb39eefe341f03e830'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "http://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '3ffa499a6a810a091bb717765e7232c35a3071bc15533a42af01e2d8cb818155'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'
  license :commercial

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
