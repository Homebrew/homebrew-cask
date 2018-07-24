cask 'scap-workbench' do
  version '1.2.0'
  sha256 'cf24fe103e975700532105bf32c741bfd54e4f3b9512435b2e970df607b541de'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version.sub(%r{-.+}, '')}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
