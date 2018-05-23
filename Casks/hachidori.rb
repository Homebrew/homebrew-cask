cask 'hachidori' do
  version '2.2.4'
  sha256 'a9368e9ef2529d828d34c50b6997f0163f257b52c07f377b62a1e181778d62e6'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom',
          checkpoint: 'e008cca070d3d01a96ed0f9a89449bf05936dd459b933547cda5e1d3e0a1ce41'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
