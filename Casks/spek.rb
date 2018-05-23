cask 'spek' do
  version '0.8.3'
  sha256 '648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54'

  # github.com/alexkay/spek was verified as official when first introduced to the cask
  url "https://github.com/alexkay/spek/releases/download/v#{version}/spek-#{version}.dmg"
  appcast 'https://github.com/alexkay/spek/releases.atom',
          checkpoint: '3035522c6bd5754965a890aa89038e549f5d6251b985106c2d0ccbd2af08d31d'
  name 'Spek'
  homepage 'http://spek.cc/'

  depends_on macos: '<= :sierra'

  app 'Spek.app'
end
