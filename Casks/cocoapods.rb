cask :v1 => 'cocoapods' do
  version '0.37.0'
  sha256 '4a7ca1be0b9c2e4c8bdbd11871774951f1e5d7c54bd915a0e768ce7ceaa4630c'

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
    system 'defaults write org.cocoapods.CocoaPods CPRequestCLIToolInstallationAgain YES'
  end
end
