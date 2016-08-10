cask 'hands-off' do
  version '3.0.6'
  sha256 '8c6b8b8f813e16378e5e6652d74c997cdf6ed3922aa6389d008af1efb2d77a09'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: 'e77c570a88756fa34f6c0a80df1cd7c239e223f34c827343b22edbd88430ee31'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'
  license :commercial

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.metakine.handsoff.plist'
end
