cask 'mendeley-reference-manager' do
  version '2.25.0'
  sha256 '25bd3feb8005383f16f379b33532f7d08190a2cdb93bfc74798f22e50da72c23'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
