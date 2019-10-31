cask 'mendeley-reference-manager' do
  version '2.15.0'
  sha256 '004fc765bc9539170e7f14fdce386593bc2caa3742de51577b775c6d2ed81025'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
