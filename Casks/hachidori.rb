cask 'hachidori' do
  version '1.1.7.3'
  sha256 'dd9e9966e5c89392aaffb5a39d47c469918a20637d5d3b778d0de2f1bb1d64ee'

  # github.com/chikorita157/hachidori was verified as official when first introduced to the cask
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  appcast 'https://github.com/chikorita157/hachidori/releases.atom',
          checkpoint: 'b17eb5f0d15a34a5edcfb570a9fd1927ee3ad62e695243cd93a2661dd1e74d42'
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'
  license :bsd

  app 'Hachidori.app'
end
