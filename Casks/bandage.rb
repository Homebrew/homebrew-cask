cask :v1 => 'bandage' do
  version '0.6.2'
  sha256 '599648d23a14f26b41f5a3b2e0e34f162be2607058b1c02cea9370002a16ef81'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
