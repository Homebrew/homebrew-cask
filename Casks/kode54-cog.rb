cask 'kode54-cog' do
  version '1122,7f3da31b4'
  sha256 'a63452b62a510310071f1f2d801d6fe55ad7c51fc9c3a9fea26cc58b39597bd0'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
