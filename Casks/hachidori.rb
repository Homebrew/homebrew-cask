cask 'hachidori' do
  version '3.0.9'
  sha256 '6ba2810efdaac15f4d1da84f19cb9de3a9a67dd41911671f619a39a5c76b8a3d'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
