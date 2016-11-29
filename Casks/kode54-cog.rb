cask 'kode54-cog' do
  version '0.08,af69cd5'
  sha256 '38cdacaacbc0c48915fd5c9b434e0dd77e25a2541bd3df1421ef8efd578b00a1'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
