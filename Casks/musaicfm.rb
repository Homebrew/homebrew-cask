cask 'musaicfm' do
  version '1.1.5'
  sha256 '760a5545922d71f72d0b55e9d750f61cdde508a46150dcce869c6cafbdd252f0'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
