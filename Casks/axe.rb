cask 'axe' do
  version '1.1.8'
  sha256 'bb76e5d20f7db4e17f445e8b708b64429946a6928b7738ea9c99cbeca864259e'

  url "https://github.com/axerunners/axe/releases/download/v#{version}/axecore-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/axerunners/axe/releases.atom'
  name 'AXE'
  homepage 'https://github.com/axerunners/axe'

  app 'AXE-Qt.app'

  preflight do
    set_permissions "#{staged_path}/AXE-Qt.app", '0755'
  end
end
