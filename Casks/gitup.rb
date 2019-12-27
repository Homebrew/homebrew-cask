cask 'gitup' do
  version '1.1.1'
  sha256 '3a4cee7ede28188a014d4fb9704c6a37255152002e96aa2f0ab41542d6753c98'

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
