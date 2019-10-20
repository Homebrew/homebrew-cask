cask 'kode54-cog' do
  version '0.08,389a70155'
  sha256 'da0c0e2b071b81519e98a1bbe60b7b78d51c783df55d286a2ab278d87d1465a3'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
