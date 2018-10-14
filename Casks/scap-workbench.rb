cask 'scap-workbench' do
  version '1.2.0'
  sha256 '5acd7e167c8c5f874dc7b0980f9d36b4ea5832307c50b7ea0fd7cfc662dc7f55'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version.sub(%r{-.+}, '')}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
