cask :v1 => 'cocoapods' do
  version '0.36.3'
  sha256 'e3ba2bb9c3c5fb1556b7e0fe8e6a6d09ca35ce6dbc750a515a921189d51698e7'

  url "https://github.com/CocoaPods/CocoaPods.app/releases/download/#{version}/CocoaPods.app-#{version}.tar.xz"
  appcast 'https://app.cocoapods.org/sparkle'
  name 'CocoaPods.app'
  container :type => :tar
  homepage 'https://cocoapods.org/'
  license :mit

  app 'CocoaPods.app'

  binary 'CocoaPods.app/Contents/Resources/pod'
end
