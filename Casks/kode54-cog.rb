cask 'kode54-cog' do
  version '0.08,fa6c02d3e'
  sha256 'db216785c0412c5d86fc9781173f25729ba734e95a35f7da1338a4b74eba8e42'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
