cask 'kode54-cog' do
  version '0.08,754b5f126'
  sha256 '4de49819ae8637ac770cbd70eb38c9abd51c90254bc4c8f057dda1c322d6dff3'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
