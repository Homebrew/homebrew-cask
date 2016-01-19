cask 'cocoapods' do
  version '0.39.0'
  sha256 '51c5d0117272a9b3c30c15dd0a9776574a23c5d810ec0c4b298b0ce4c483f27f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/CocoaPods/CocoaPods-app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle',
          checkpoint: 'e4e0ac27db2639c5349c6be4273be6fd0dae4bc81128d25bc9c541e83ba032dd'
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
