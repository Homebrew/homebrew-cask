cask 'marp' do
  version '0.0.9'
  sha256 'd72603f232ac9a4dcef05132221262b961536ebb2cf115d007f017dc94030f7f'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: 'c88ae7e0e0cce3ca564c0a263c2421f57202e52014773c0721b54904356a8432'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'

  app 'Marp.app'
end
