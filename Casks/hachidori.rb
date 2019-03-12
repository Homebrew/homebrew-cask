cask 'hachidori' do
  version '3.1.2'
  sha256 '3911d6a54a81940dffa2ba592702f2849f1f959a6ee77f15f31ae89ea6fe89a6'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
