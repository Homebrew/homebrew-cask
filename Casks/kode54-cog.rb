cask 'kode54-cog' do
  version '0.08,d2dc14a7'
  sha256 '0ca848c8a6733d5a60b0c252cd5789c8d8c375c62e6cea697c453a307393ae46'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
