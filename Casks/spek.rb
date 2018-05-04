cask 'spek' do
  version '0.8.3'
  sha256 '648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54'

  # github.com/alexkay/spek was verified as official when first introduced to the cask
  url "https://github.com/alexkay/spek/releases/download/v#{version}/spek-#{version}.dmg"
  appcast 'https://github.com/alexkay/spek/releases.atom',
          checkpoint: '2ed5efa777cb07040d9d44e658bec267111b978d4701bbd8d6f6d3e1c1264f49'
  name 'Spek'
  homepage 'http://spek.cc/'

  app 'Spek.app'

  if MacOS.version >= :high_sierra
    opoo 'Spek may not work for some users on High Sierra. There are forks with compatibility, but they are not currently available on Homebrew. See https://github.com/caskroom/homebrew-cask/pull/46109 for more information.'
  end
end
