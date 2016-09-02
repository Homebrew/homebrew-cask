cask 'cornerstone' do
  version '3.0.1'
  sha256 '3de66dc846c7c69f8c8308d04dac537ee094e2e273750d7e3a49324cea44c630'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed3.php',
          checkpoint: '3334fcf004f513476758b6bb3d1733c804bfd86c02f280c9dd9f71728d6e7b63'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
