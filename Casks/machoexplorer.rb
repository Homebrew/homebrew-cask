cask 'machoexplorer' do
  version '0.4.0'
  sha256 '01982f4a246adeea957a3f916ab9cdd4b77acb8cdf926a2feda6f20cdd7e34a6'

  url "https://github.com/everettjf/MachOExplorer/releases/download/v#{version}/MachOExplorer.dmg"
  appcast 'https://github.com/everettjf/MachOExplorer/releases.atom'
  name 'MachOExplorer'
  homepage 'https://github.com/everettjf/MachOExplorer'

  app 'MachOExplorer.app'
end
