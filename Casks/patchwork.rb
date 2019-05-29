cask 'patchwork' do
  version '3.12.0'
  sha256 '3473a97212cf3fd35cabead07cb6f66850cad176386feb07db435160922f6114'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
