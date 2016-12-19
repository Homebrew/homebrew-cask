cask 'royal-tsx' do
  version '3.0.0.1000'
  sha256 'cd2fce3697f9b414285b2631587d4c2449e0f45a686f1869288e2ac11de958ff'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: 'e181c29a87077e89980e992df2c5f2ce965f38947fd6ab2ffbe25a8644a33353'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
