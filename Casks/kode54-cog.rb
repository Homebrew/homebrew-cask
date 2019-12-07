cask 'kode54-cog' do
  version '0.08,61c6cf328'
  sha256 '2dcedaa2ca313ef23c33468d9c0a8d9241cd323d4bc5bb03146a258585229706'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
