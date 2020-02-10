cask 'gitup' do
  version '1.1.2'
  sha256 '78b10d8e489d7ff0ddd5f7c3bbbdcbecf4c9896619eaf6a3a268e9debef28203'

  # gitup-builds.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://gitup-builds.s3.amazonaws.com/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom'
  name 'GitUp'
  homepage 'https://gitup.co/'

  auto_updates true

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: '~/Library/Preferences/co.gitup.mac.plist'
end
