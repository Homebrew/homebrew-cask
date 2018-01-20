cask 'cocoapods-app' do
  version '1.2.0'
  sha256 '189e40d887364027645d5471a8fc733a22dc006dec112ad6bc33cd3ea8f417a4'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: '083584b4914d17892691e80a248a15ee7f773bdd1677554eb4e13480d7c9e777'
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
