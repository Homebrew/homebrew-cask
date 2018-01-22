cask 'cocoapods-app' do
  version '1.4.0'
  sha256 '46e1e9b8e2e1ce70b53baac4ec151b5b047a39f6322faf4fc2bd37d35f805d8c'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: '6463abf2126b0a28912c9f08c4f1feed20c84ffdf4ab11b919e88c85d64d8c82'
  name 'CocoaPods.app'
  homepage 'https://cocoapods.org/'

  app 'CocoaPods.app'
  binary "#{appdir}/CocoaPods.app/Contents/Helpers/pod"

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system_command '/usr/bin/defaults', args: ['write', 'org.cocoapods.CocoaPods', 'CPDoNotRequestCLIToolInstallationAgain', '-bool', 'true']
  end

  zap trash: [
               '~/Library/Preferences/org.cocoapods.CocoaPods.plist',
             ]
end
