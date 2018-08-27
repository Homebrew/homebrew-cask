cask 'hachidori' do
  version '3.0.3'
  sha256 '1f6c19880dc28a075528efa6a94f97134e9f236a3da219984b22080bdb0a93f5'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
