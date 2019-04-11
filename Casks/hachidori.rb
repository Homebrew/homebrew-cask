cask 'hachidori' do
  version '3.1.5'
  sha256 '73d4dd0db905b56d64ab3005eabfac6795692be13a4b4a102323af03c62a3c72'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
