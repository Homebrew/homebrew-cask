cask 'kode54-cog' do
  version '1137,05386bce3'
  sha256 '69a6d17a9bf73cefd726466a828b724dc9a8e2ffaf8b64afc812aad8944d9962'

  # losno.co/cog/ was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
