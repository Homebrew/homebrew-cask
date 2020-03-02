cask 'kode54-cog' do
  version '0.08,9dd4f6804'
  sha256 '9cc4c8553be6384fb1c6d3497e6f3f336ef5fdc9ebca42d0f878ee36f6500dd3'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
