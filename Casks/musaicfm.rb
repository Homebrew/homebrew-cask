cask 'musaicfm' do
  version '1.1.3'
  sha256 '4f942a9b9cab9af7178fa4de7ca5809ba36c1ecbf551c7db9567a48de982336f'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
