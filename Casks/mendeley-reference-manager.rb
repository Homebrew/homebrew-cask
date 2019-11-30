cask 'mendeley-reference-manager' do
  version '2.16.0'
  sha256 '53612db726c41690e3d0c935149a735e8895aec9fa6341ac9bcc622fccebf96f'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
