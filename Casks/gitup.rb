cask 'gitup' do
  version '1.0.11'
  sha256 '3cd4b67bd76cdcec924895d69f6e867233bcc026fee5507fce43333e8b47fb4d'

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
