cask 'kode54-cog' do
  version '1134,798cc4ce4'
  sha256 '9a554227b53d5c58fb11af6050e75bb50abe238c94b24d2845bd735a7b4d9ffd'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
