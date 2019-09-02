cask 'musaicfm' do
  version '1.1.4'
  sha256 '1f3b1b52b18be3c012a7646d66b694bb77cdc705a887820e333d94a74ed1bd77'

  url "https://github.com/docterd/MusaicFM/releases/download/#{version}/MusaicFM.saver.zip"
  appcast 'https://github.com/docterd/MusaicFM/releases.atom'
  name 'MusaicFM Screensaver'
  homepage 'https://github.com/docterd/MusaicFM'

  screen_saver 'MusaicFM.saver'
end
