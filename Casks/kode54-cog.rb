cask 'kode54-cog' do
  version '0.08,004c53962'
  sha256 '2e3e9cf4a8b72fecf902c9803f64eabdbbc11ebe6df72478a9ee79f68aedeff5'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
