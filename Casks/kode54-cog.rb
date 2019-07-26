cask 'kode54-cog' do
  version '0.08,1dceedaa5'
  sha256 '3054a006462ed797033eb7dfc02f928af8f6e39e93c5a032cee33f8cec301840'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
