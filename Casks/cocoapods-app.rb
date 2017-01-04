cask 'cocoapods-app' do
  version '1.1.1'
  sha256 '04700e67478a626be75fd8e54990068c87a131620c3585438d7a95123a099e96'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: 'ad3ea79f59cc2ce3408b4945608d0691c6e569b363bfdd95c5a0677637487a92'
  name 'CocoaPods.app'
  homepage 'https://cocoapods.org/'

  app 'CocoaPods.app'
  binary "#{appdir}/CocoaPods.app/Contents/Helpers/pod"

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system_command '/usr/bin/defaults', args: ['write', 'org.cocoapods.CocoaPods', 'CPDoNotRequestCLIToolInstallationAgain', '-bool', 'true']
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Preferences/org.cocoapods.CocoaPods.plist',
              ]
end
