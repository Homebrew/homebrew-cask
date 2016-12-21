cask 'kode54-cog' do
  version '0.08,3ff4892'
  sha256 '787c430f57188ff95d9b79b6122382a5b99329d02114bfb31a47757b85998901'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
