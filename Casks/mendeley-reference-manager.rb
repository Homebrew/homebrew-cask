cask 'mendeley-reference-manager' do
  version '2.31.0'
  sha256 'a104571248c92d1b36764ee80db7dadb7691f5b02c3f041ce7d5f24334ab178f'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
