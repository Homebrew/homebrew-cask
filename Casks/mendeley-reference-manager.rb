cask 'mendeley-reference-manager' do
  version '2.19.0'
  sha256 '52a4b8e093bbe3fdaea79170c437f857f3b47579651d73d73e4280f5ea97e85f'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
