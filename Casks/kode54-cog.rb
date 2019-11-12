cask 'kode54-cog' do
  version '0.08,0a9c7693d'
  sha256 '6825d54e7c4b488481c2c884a8415f74335ade6d4b8b802a46871b6f0f14fa54'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
