cask 'stella' do
  version '5.1.1'
  sha256 'cc6e292968afc82f6b9f237f09bbd51eae6040a50cbbf1c225af897fce773b18'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: '5de1792c023ab9f485dbf42c5e3240065d123e77f985c2c92e99459875761f0b'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
