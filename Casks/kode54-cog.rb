cask 'kode54-cog' do
  version '0.08,0f543a1b5'
  sha256 '9f12455b752d7694da3e9f05fbd506d67731ba78d1d5dd80df2af28c66b3e0d9'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
