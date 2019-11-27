cask 'kode54-cog' do
  version '0.08,86681e972'
  sha256 '659054d25af3aef1548da0caa39c9973328dc8dabc5966b99988e9b393260690'

  # losno.co/cog was verified as official when first introduced to the cask
  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  appcast 'https://balde.losno.co/cog/mercury.xml'
  name 'Cog'
  homepage 'https://kode54.net/cog/'

  app 'Cog.app'
end
