cask 'hachidori' do
  version '3.1.6'
  sha256 '7c9e9147417d07b5c237b16c79e99989332976202f4d069f5ff9cf8ad0618f40'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
