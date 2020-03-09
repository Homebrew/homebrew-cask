cask 'kode54-cog' do
  version '1119,18acc7fdd'
  sha256 '02a6b468aa9e9d91361a1fe2db59763558a8c4fe88b2bf3f4d1feea05aa3c7fb'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
