cask 'qmind' do
  version '0.3.4'
  sha256 '498dc5b753804d25cbf15afbdb8641af1ddcf53b65ab04d3188c7a8b669f6695'

  # github.com/qvacua/qmind was verified as official when first introduced to the cask
  url "https://github.com/qvacua/qmind/releases/download/v#{version}-22/Qmind-#{version}.zip"
  appcast 'https://github.com/qvacua/qmind/releases.atom',
          checkpoint: '0f08a3d9e84a7b5f1e0c0f5ce4d5d413507cc55aa8fc112c9b07da0d3fc3ca3f'
  name 'Qmind'
  homepage 'http://qvacua.com/'

  app 'Qmind.app'
end
