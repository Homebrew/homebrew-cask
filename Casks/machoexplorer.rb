cask 'machoexplorer' do
  version '1.0'
  sha256 '3f9b9e400e008174cb9c4eb8f186b18060c5a12a93622c9d5f60254500735232'

  url "https://github.com/everettjf/MachOExplorer/releases/download/v#{version}/MachOExplorer.dmg"
  appcast 'https://github.com/everettjf/MachOExplorer/releases.atom'
  name 'MachOExplorer'
  homepage 'https://github.com/everettjf/MachOExplorer'

  app 'MachOExplorer.app'
end
