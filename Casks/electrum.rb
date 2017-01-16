cask 'electrum' do
  version '2.7.17'
  sha256 'b549845ec352ed6464f6aea33501cb7bf76ab50365710d2b1047c3f95742d08a'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '22ba4bc1fd1884191582704505d1057250e16a6387ebf2d5bb20e992f30eef3e'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
