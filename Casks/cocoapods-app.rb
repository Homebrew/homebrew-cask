cask 'cocoapods-app' do
  version '1.5.2'
  sha256 '03aa37afb129d6ae515d3b9ee7a81c30ba91050131e2dfbb3683bdd2f05ac67a'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: 'ca6d25f4b987885e0bd17e91c33e52852a084b445340dbafe8cc9694c7e373c8'
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
