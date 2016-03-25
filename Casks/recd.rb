cask 'recd' do
  version '1.4.1'
  sha256 '11f149609cf3996d850a33939c4b6de24470f200bd0ac9fd3719b408ec8f49d6'

  url "https://github.com/aeewhite/Recd/releases/download/v#{version}/Rec.d-Mac-v#{version}.dmg"
  appcast 'https://github.com/aeewhite/recd/releases.atom',
          checkpoint: 'b5c956ce0cd2d888aa2c69b537f05ad47b4601ee57a753a592006e820c3927cb'
  name "Rec'd"
  homepage 'https://github.com/aeewhite/Recd'
  license :oss

  app "Rec'd.app"
end
