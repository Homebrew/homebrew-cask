cask 'application-loader' do
  version '3.0'
  sha256 '529ad05c1c2e093607cbd017e45fc258c2bcde207bb73192b5db6411b78e5c62'

  url "https://itunesconnect.apple.com/apploader/ApplicationLoader_#{version}.dmg"
  name 'Application Loader'
  homepage 'https://itunesconnect.apple.com'
  license :gratis

  pkg 'ApplicationLoader.pkg'

  uninstall pkgutil: 'com.apple.pkg.ApplicationLoader'
end
