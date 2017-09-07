cask 'kode54-cog' do
  version '0.08,1a084b43'
  sha256 '9c52cb8d79fe74991a58e814b46a8bcdc40067d304d617a837ae56ee1c6bb5cb'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
