cask 'scap-workbench' do
  version '1.1.3'
  sha256 '04a6c752aba3de1a76ae6c3a0e69c4e73f6601f073d2f24d48ee61cacab20330'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom',
          checkpoint: '99c50028334b8ffa6333e9c97e0a3fdc449704f17ac89cefc4b6c0701c518363'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
