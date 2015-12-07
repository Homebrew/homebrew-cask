cask :v1 => 'bandage' do
  version '0.7.1'
  sha256 '29f88973388f27fa6456065c7659d5250dd0e825f184c3604621baacd440452f'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
