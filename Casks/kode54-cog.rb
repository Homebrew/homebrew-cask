cask 'kode54-cog' do
  version '1143,cbe7dcfd4'
  sha256 '15b637fff835cec53e3792179b590c2fd424b8fee86dad84aa5c9cf7a435ea4e'

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
