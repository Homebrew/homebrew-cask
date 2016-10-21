cask 'royal-tsx' do
  version '2.2.9.1000'
  sha256 '7fccf594f56fd2824efef0bc933669ad3ab2f3788224450a65fd2eb493423bf9'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '1c70f653f26c956862062b7dd9cf6c1ce65b3065d707edbe0abb511a1ea21d12'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
