cask 'dreampages-plus' do
  version '160'
  sha256 '81426655fc6aaaccae80be1872dc45e6fd32d1f9cc0e8077ce4fb8dd35337aab'

  url "https://dnp-photobook.jp/plus/download/app/mac/DPPlus_setup_V#{version}.dmg"
  name 'DreamPages Plus'
  homepage 'https://dnp-photobook.jp/plus/'

  auto_updates true

  suite 'DreamPages Plus'
end
