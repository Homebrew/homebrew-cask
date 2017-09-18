cask 'gitup' do
  version '1.0.8'
  sha256 'dfc7572c36807cbc70ef3c5d28429be1988ffc1c872e13ba092d643ddc964393'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '37bf09620ee73ca5dbae0a6a54b1afa595d4e432e2054b51274e93999ccfccbe'
  name 'GitUp'
  homepage 'http://gitup.co/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary "#{appdir}/GitUp.app/Contents/SharedSupport/gitup"

  zap delete: '~/Library/Preferences/co.gitup.mac.plist'
end
