cask 'machoexplorer' do
  version '0.4.0'
  sha256 '01982f4a246adeea957a3f916ab9cdd4b77acb8cdf926a2feda6f20cdd7e34a6'

  url "https://github.com/everettjf/MachOExplorer/releases/download/v#{version}/MachOExplorer.dmg"
  appcast 'https://github.com/everettjf/MachOExplorer/releases.atom',
          checkpoint: '6a32efda4687143a6c6b08a96f2b47fa4121cb253557e768899dc2a3040ca2dc'
  name 'MachOExplorer'
  homepage 'https://github.com/everettjf/MachOExplorer'

  app 'MachOExplorer.app'
end
