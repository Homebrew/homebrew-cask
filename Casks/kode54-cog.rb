cask 'kode54-cog' do
  version '0.08,e1e2c2d'
  sha256 '95733ae3cfe856fe22e93411ccedd907b12d1acaa2205832237674ed1ae50612'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
