cask :v1 => 'cocoapods' do
  version '0.38.2'
  sha256 'f8e7e7335d6c70e35b57045f474e56fe2335b1fd85e5395f0dcdbb930b685231'

  url "https://github.com/CocoaPods/CocoaPods.app/releases/download/#{version}/CocoaPods.app-#{version}.tar.bz2"
  appcast 'https://app.cocoapods.org/sparkle'
  name 'CocoaPods.app'
  container :type => :tar
  homepage 'https://cocoapods.org/'
  license :mit

  app 'CocoaPods.app'

  binary 'CocoaPods.app/Contents/Resources/pod'

  postflight do
    # Because Homebrew-Cask symlinks the binstub directly, stop the app from asking the user to install the binstub.
    system 'defaults write org.cocoapods.CocoaPods CPDoNotRequestCLIToolInstallationAgain YES'
  end
end
