cask :v1 => 'royal-tsx' do
  version '2.1.0.1000'
  sha256 '69af55cbb53244649d84535a7340d6453c021b9d192f5482fbc4fed0f2af2cb1'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '035b9ce2264b942108386aa40456ebb87ab772df35569898867ffdfd64b95901'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
