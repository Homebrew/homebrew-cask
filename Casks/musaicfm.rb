cask 'musaicfm' do
  version '1.1.5'
  sha256 'b90d8415d2da79f65dda072c0e6bb1dd8c2ccb1f92555283f55368d9d065222f'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
