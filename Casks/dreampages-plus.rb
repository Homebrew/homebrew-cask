cask 'dreampages-plus' do
  version '173'
  sha256 '9c0bfc183be44b87a17f812c8090bc3f95e5b0ab81e3e7c87383ab560bad336d'

  url "https://dnp-photobook.jp/plus/download/app/mac/DPPlus_setup_V#{version}.dmg"
  name 'DreamPages Plus'
  homepage 'https://dnp-photobook.jp/plus/'

  auto_updates true

  suite 'DreamPages Plus'
end
