cask 'kode54-cog' do
  version '0.08,072c4346c'
  sha256 'cba7805bf97616dfb20f9c46a2333cc79de8a6605e7bdeb25c39bcc6270fe500'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  auto_updates true

  app 'Cog.app'
end
