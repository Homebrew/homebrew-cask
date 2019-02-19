cask 'musaicfm' do
  version '1.1'
  sha256 '947c7eb45c680936eb86dc5f2c6f1f188e16d9c7c75bf68bb5216e343c0f6df9'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
