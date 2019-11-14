cask 'kode54-cog' do
  version '0.08,09777d455'
  sha256 '9022218156e1c844a9953526601a1d264f317c13cf361c4da2387e2949ef0f76'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
