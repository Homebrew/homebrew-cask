cask 'gitup' do
  version '1.0.11'
  sha256 '3cd4b67bd76cdcec924895d69f6e867233bcc026fee5507fce43333e8b47fb4d'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '8af6cd118a5e855af3afa7468596b32319ed9a4b810c6ffe0145b57bdff6eaaa'
  name 'GitUp'
  homepage 'http://gitup.co/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap trash: '~/Library/Preferences/co.gitup.mac.plist'
end
