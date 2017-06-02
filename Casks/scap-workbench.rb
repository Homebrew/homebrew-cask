cask 'scap-workbench' do
  version '1.1.4'
  sha256 '506ea96f69f1c67cc1b836c357d1b7accf616ffb676c19713ebdc8c379a713e7'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom',
          checkpoint: '1725f812a7fd7b6f97ef71fea73e3c70be6904be0de6cbdccc4307485cbd4863'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
