cask 'kode54-cog' do
  version '0.08,258a88464'
  sha256 '55656f1225f14509752a5d5b20bd652d289b22625a1fe284235466075874e078'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
