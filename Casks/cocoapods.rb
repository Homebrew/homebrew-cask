cask :v1 => 'cocoapods' do
  version '0.38.0'
  sha256 'b9e2d3dd2c7acd7d37689e5393d1425fd048555f8faaf895d54a7aab66b49dc5'

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
