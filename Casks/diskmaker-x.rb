cask 'diskmaker-x' do
  version '6rc5'
  sha256 'bfbaf4db47d2553cbe94773f20eff97b95bdf246bd7145d4fbdafe2117b4744d'

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  appcast 'https://diskmakerx.com/feed/',
          checkpoint: 'fbe8f4d4b56239101361e209d451be39637f77a5f2a97ebf5b17c76255caf77a'
  name 'DiskMaker X'
  homepage 'https://diskmakerx.com/'

  app "DiskMaker X #{version.major}.app"
end
