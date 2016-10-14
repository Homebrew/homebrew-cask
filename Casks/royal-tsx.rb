cask 'royal-tsx' do
  version '2.2.6.1000'
  sha256 '31b6c0b325076e0fdf67d5d2e684bf789bf73396fd53d4b51feb61cec22a2b7b'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '1c70f653f26c956862062b7dd9cf6c1ce65b3065d707edbe0abb511a1ea21d12'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
