cask :v1 => 'royal-tsx' do
  version '2.1.0.1000'
  sha256 '69af55cbb53244649d84535a7340d6453c021b9d192f5482fbc4fed0f2af2cb1'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '98ca16267d57dd3a5277e1ee4aaafcbdbe8952fd3f5fda2c9b395d5276c969ca'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
