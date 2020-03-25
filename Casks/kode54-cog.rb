cask 'kode54-cog' do
  version '1127,5fbf722f2'
  sha256 'ad19b4283aaacd15a5e5135ceecc9eb2de17012d1849de55d406cf000d952d2c'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
