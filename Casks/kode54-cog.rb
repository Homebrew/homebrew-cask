cask 'kode54-cog' do
  version '1125,b7596caa4'
  sha256 '3880fbfd68a7e95ad3566971b79a8a6b0dee76bb30a203904624100e8ec77f92'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
