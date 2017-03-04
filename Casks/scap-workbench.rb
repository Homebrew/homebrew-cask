cask 'scap-workbench' do
  version '1.1.4'
  sha256 '506ea96f69f1c67cc1b836c357d1b7accf616ffb676c19713ebdc8c379a713e7'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom',
          checkpoint: 'b3d63d0ee9e295b11fe80731a57057b5e4def157812e16033ea0a29520ee7413'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
