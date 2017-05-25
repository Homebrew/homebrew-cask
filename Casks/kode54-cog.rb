cask 'kode54-cog' do
  version '0.08,c5c451b1'
  sha256 'd4fa5779af6184054dfce6d417885d59dac1a75b24739053196c50520a1d60b4'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
