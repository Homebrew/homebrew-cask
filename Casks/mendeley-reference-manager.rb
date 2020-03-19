cask 'mendeley-reference-manager' do
  version '2.20.0'
  sha256 '2146670838f47e50d19ef86d9e6d76e4371145354d0baa058937b30f0c9f846e'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
