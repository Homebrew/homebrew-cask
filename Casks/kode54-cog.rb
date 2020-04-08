cask 'kode54-cog' do
  version '1131,6c7b7f721'
  sha256 'bc21961d2404d2b100ddb6daf825ab74f07dbeb7f6c2b8b030627a6a199dce4b'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
