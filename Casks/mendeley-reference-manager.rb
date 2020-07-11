cask 'mendeley-reference-manager' do
  version '2.30.0'
  sha256 '2444126b87c5b0540b73313a0afe744d9eee632f4541fcd1ac51b99f413eb830'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
