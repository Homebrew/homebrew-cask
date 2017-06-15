cask 'diskmaker-x' do
  version '6rc5'
  sha256 'bfbaf4db47d2553cbe94773f20eff97b95bdf246bd7145d4fbdafe2117b4744d'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: '50afcb3b4d239b33c21d8442a91ab257b4c5ce8eddd1bce7561cd2e81e024aa4'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
