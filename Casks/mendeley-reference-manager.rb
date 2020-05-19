cask 'mendeley-reference-manager' do
  version '2.26.0'
  sha256 '9591dffdc1c579d4c4e4c10495ba65cefde3ef547da6e26ae35a0edbc7235d30'

  url "https://static.mendeley.com/bin/desktop/mendeley-reference-manager-#{version}.dmg"
  appcast 'https://static.mendeley.com/bin/desktop/latest-mac.yml'
  name 'Mendeley Reference Manager'
  homepage 'https://www.mendeley.com/download-reference-manager/macOS/'

  app 'Mendeley Reference Manager.app'
end
