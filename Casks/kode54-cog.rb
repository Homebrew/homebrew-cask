cask 'kode54-cog' do
  version '0.08,368bb00'
  sha256 'e8258f6c93f7fe7b0831f0538f8d4925f115b887ccb018fed1865659c9bdcea6'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
