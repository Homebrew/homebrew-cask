cask 'kode54-cog' do
  version '0.08,67332f49'
  sha256 'dd1a360d46893092d11981145b08971aec82b6df804ce14b000e6d30c02864a5'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
