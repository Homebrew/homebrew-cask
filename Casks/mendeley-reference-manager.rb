cask 'mendeley-reference-manager' do
  version '2.22.0'
  sha256 '3988cb36b703b3f91ed59df6719fbb026e327db5fd31d53c51c27096b912e636'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
