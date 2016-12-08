cask 'scap-workbench' do
  version '1.1.2'
  sha256 '8b3a5faf1fadacba9d789a782d3c74fdd79e7cb2f0d0c9dbbbda75a66a89294f'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom',
          checkpoint: 'ab89a9ccba6ec34333295ced1186bdc091e16e35543eedb7473cae1e3d6de772'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
