cask 'mendeley-reference-manager' do
  version '2.27.0'
  sha256 '06964c7b32c4cb46428f9a351c75bb04ab9ad7ace544447cc47ec2ff84a5fe5b'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
