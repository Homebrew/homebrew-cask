cask 'kode54-cog' do
  version '1135,f5c7c4d49'
  sha256 '5844e1e35fdb0b6b986514d74d8545bc5778775edd0f2a79fc06313ae464cc55'

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
