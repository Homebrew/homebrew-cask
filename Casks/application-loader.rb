cask 'application-loader' do
  version '3.1'
  sha256 '821c823b133234525d08f8d1f586e1e0301d427610073e8fcd17e63b40b64eb3'

  url "https://itunesconnect.apple.com/apploader/ApplicationLoader_#{version}.dmg"
  name 'Application Loader'
  homepage 'https://itunesconnect.apple.com/'

  pkg 'ApplicationLoader.pkg'

  uninstall pkgutil: 'com.apple.pkg.ApplicationLoader'

  zap trash: [
               '~/Library/Caches/com.apple.itunes.connect.ApplicationLoader',
               '~/Library/Preferences/com.apple.itunes.connect.ApplicationLoader.plist',
             ]
end
