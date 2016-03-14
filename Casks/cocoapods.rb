cask 'cocoapods' do
  version '1.0.0.beta.5'
  sha256 '953f5ac33908b97fb5a370d6ab3db0b82e61f455875315bde95c6be7f45dda5a'

  # github.com/CocoaPods/CocoaPods was verified as official when first introduced to the cask
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: 'd6f6b86a010ba244a2a323737cb3c7c5e3904dbb6e3c7edc302c514b0fe5bc5f'
  name 'CocoaPods.app'
  homepage 'https://cocoapods.org/'
  license :mit

  container type: :tar

  app 'CocoaPods.app'
  binary 'CocoaPods.app/Contents/Helpers/pod'

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system 'defaults write org.cocoapods.CocoaPods CPDoNotRequestCLIToolInstallationAgain YES'
  end
end
