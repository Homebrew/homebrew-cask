cask 'cocoapods' do
  version '1.0.0.rc.1'
  sha256 'f1013f95294580c7cd10292cbc0930dd37dcf59f7132d66d4d44da577110ecbc'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: '21534ce10fb9187d8fc4bfc9ba85919e5417733d76e9dee838d3ee0ce4c194a4'
  name 'CocoaPods.app'
  homepage 'https://cocoapods.org/'
  license :mit

  container type: :tar

  app 'CocoaPods.app'
  binary 'CocoaPods.app/Contents/Helpers/pod'

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system 'defaults write org.cocoapods.CocoaPods CPDoNotRequestCLIToolInstallationAgain YES'
    suppress_move_to_applications
  end
end
