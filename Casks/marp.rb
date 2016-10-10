cask 'marp' do
  version '0.0.9'
  sha256 'd72603f232ac9a4dcef05132221262b961536ebb2cf115d007f017dc94030f7f'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: '377f8d38c817a6ffb293c6de539ae7f4cb309cb76244f0f872c43e8eb8625c29'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'
  license :mit

  app 'Marp.app'
end
