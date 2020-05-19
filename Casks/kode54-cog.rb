cask 'kode54-cog' do
  version '1144,c009a17cc'
  sha256 '30caf2ddb0056b00771eec1567de93d2e99b0dea6542cc91b5085552a42908ad'

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
