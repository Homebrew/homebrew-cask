cask 'gitup' do
  version '1.1'
  sha256 '0f59d3c0514e98e4f8fad710c42a12995866305c509b91da0ade7270b95efb4d'

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
