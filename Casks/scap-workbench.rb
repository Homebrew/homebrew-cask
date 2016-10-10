cask 'scap-workbench' do
  version '1.1.1'
  sha256 '2d9cfea5e64e7585569bedb201ef9f76e376e24eeb16ce200f9f78cb7fa7a18e'

  # github.com/OpenSCAP/scap-workbench was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version}/scap-workbench-#{version}.dmg"
  appcast 'https://github.com/OpenSCAP/scap-workbench/releases.atom',
          checkpoint: '7beb99e46af9aae7effb84245193d14564101f897ffbfce6bcf7250ade22bb70'
  name 'scap-workbench'
  homepage 'https://www.open-scap.org/tools/scap-workbench/'

  app 'scap-workbench.app'
end
