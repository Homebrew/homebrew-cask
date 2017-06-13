cask 'hachidori' do
  version '2.0b8'
  sha256 '74da8cb0a48b894dca503cf8fd498da652d9a1bc14a37482e186d4b8641098e4'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/Hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom',
          checkpoint: 'f07684030a1b5aa4eb7293758fa7338a5fa89da0577571b195a3b60d9cd3e61d'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
