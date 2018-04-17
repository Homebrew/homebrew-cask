cask 'hachidori' do
  version '2.2.1'
  sha256 '51db575dd65bdcea29d554cea35bd1a6606281356e877e20d549521c5e1cbc28'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom',
          checkpoint: '993b1c9eeaa17bfb35697a8b5c09e76b518b463dc312fdb5c7c10083234ecfeb'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
