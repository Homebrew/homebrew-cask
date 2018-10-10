cask 'hachidori' do
  version '3.0.4'
  sha256 'ceb794e6c70ea57d1c6d877c2bd1102fec8b3b8442282ab7fcdbf88a2874062f'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
