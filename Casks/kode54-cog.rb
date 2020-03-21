cask 'kode54-cog' do
  version '1123,3e6d59945'
  sha256 '8795fa7758c88e84529a46cbd6f2dd774202eb2993a0328bc9eb3ec2e8a8b2a8'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
