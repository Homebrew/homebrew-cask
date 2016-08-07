cask 'hachidori' do
  version '1.1.7.4'
  sha256 '538e7f82705fca3e83fa063bca35978509a549747a2d204a5e9b924628b62092'

  # github.com/chikorita157/hachidori was verified as official when first introduced to the cask
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  appcast 'https://github.com/chikorita157/hachidori/releases.atom',
          checkpoint: '7304aa9decf3283352b6a890053a465d9f5e93b601e3d964ec5140e0cad52888'
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'
  license :bsd

  app 'Hachidori.app'
end
