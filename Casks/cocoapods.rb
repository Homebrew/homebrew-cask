cask 'cocoapods' do
  version '0.39.0'
  sha256 '51c5d0117272a9b3c30c15dd0a9776574a23c5d810ec0c4b298b0ce4c483f27f'

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
