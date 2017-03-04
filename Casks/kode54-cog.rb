cask 'kode54-cog' do
  version '0.08,3d0d0ee'
  sha256 'e62714567ef250fbe82f8539660135e0ff146902df1b09cdcfa107f08cf1f6b1'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
