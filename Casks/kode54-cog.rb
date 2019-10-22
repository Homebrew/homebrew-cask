cask 'kode54-cog' do
  version '0.08,242c0b947'
  sha256 '62df972b224c295ad3f97da2e8df8f17387c9fdd79b493f3f9c322664239bc78'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
