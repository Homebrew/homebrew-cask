cask 'patchwork' do
  version '3.13.0'
  sha256 '5409829e3d1f05f8e7fb04d4c19d8b3f1f09694dfa0a228919ebef7c8442490e'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
