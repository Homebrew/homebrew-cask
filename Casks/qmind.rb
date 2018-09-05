cask 'qmind' do
  version '0.3.4'
  sha256 '498dc5b753804d25cbf15afbdb8641af1ddcf53b65ab04d3188c7a8b669f6695'

  # github.com/qvacua/qmind was verified as official when first introduced to the cask
  url "https://github.com/qvacua/qmind/releases/download/v#{version}-22/Qmind-#{version}.zip"
  appcast 'https://github.com/qvacua/qmind/releases.atom'
  name 'Qmind'
  homepage 'http://qvacua.com/'

  app 'Qmind.app'
end
