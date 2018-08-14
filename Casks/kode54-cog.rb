cask 'kode54-cog' do
  version '0.08,7d6af357'
  sha256 '7bdf4cd2dccaf91c3dfb8dde7625679a341c578e8af571018079901b137af880'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
