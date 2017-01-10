cask 'kode54-cog' do
  version '0.08,89a2ab0'
  sha256 '959efb00c83f3bf3809806d2fa0d5dfda53b28f1415651cf115fcbb676499a31'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
