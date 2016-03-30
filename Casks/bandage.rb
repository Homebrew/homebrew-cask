cask 'bandage' do
  version '0.7.1'
  sha256 '29f88973388f27fa6456065c7659d5250dd0e825f184c3604621baacd440452f'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: 'db58afd366df0db3617e877dec3e018d1eb3f962f156d7047c8787208d6b7244'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
