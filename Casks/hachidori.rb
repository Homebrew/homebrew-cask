cask 'hachidori' do
  version '1.1.9.1'
  sha256 'd4f1d11d3f3278dea79bc43f47576aaea36e2acdac3672164b95cbdddd91391d'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/Hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom',
          checkpoint: 'b888480cde439d3cfcc5499b2ab2bcebbe3aed0a4906f28f3a3a35fb293924af'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
