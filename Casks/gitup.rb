cask 'gitup' do
  version '1.0.7'
  sha256 'b5bfe8c1802b1c7f72359214e58b2c768c5b7a573d6579a3101f8932b81d308f'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '6a0a080b65c4c9c4f8a2605759c1955eba2550a6b1314f6b53fa47f59e83cd58'
  name 'GitUp'
  homepage 'http://gitup.co/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap delete: '~/Library/Preferences/co.gitup.mac.plist'
end
