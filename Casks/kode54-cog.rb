cask 'kode54-cog' do
  version '0.08,8bc639691'
  sha256 'e42a3b0754cd0ade406266faec9a724c4890f85b44a50a9e08489b505b17a931'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
