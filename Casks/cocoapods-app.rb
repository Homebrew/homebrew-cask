cask 'cocoapods-app' do
  version '1.0.0'
  sha256 '92e41c869650cf46e42ad3011a75afa8c846cbbd7da552b85a43537061526067'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: '1c438660a09e131d1c8fe292712cb2ff797fe60fc4fc283d0d7aa59f3a9a6792'
  name 'CocoaPods.app'
  homepage 'https://cocoapods.org/'

  app 'CocoaPods.app'
  binary "#{appdir}/CocoaPods.app/Contents/Helpers/pod"

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system 'defaults', 'write', 'org.cocoapods.CocoaPods', 'CPDoNotRequestCLIToolInstallationAgain', '-bool', 'true'
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Preferences/org.cocoapods.CocoaPods.plist',
              ]
end
