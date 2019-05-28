cask 'musaicfm' do
  version '1.1.2'
  sha256 '966b84ee5941ffec8f439daf60e499dd6a07401828dc769411a98b0b1458c0b5'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
