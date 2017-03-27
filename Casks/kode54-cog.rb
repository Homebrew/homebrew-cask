cask 'kode54-cog' do
  version '0.08,a142a06'
  sha256 '3e746e7f0c12ceea3abdf70b8c7a913aaecb17a885c4f9b31c9c9168013f2d83'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
