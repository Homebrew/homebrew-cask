cask 'spek' do
  if MacOS.version <= :sierra
    version '0.8.3'
    sha256 '648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54'
    # github.com/alexkay/spek was verified as official when first introduced to the cask
    url "https://github.com/alexkay/spek/releases/download/v#{version}/spek-#{version}.dmg"
    appcast 'https://github.com/alexkay/spek/releases.atom'
  else
    version '0.8.2.3'
    sha256 '6426c4c34ac8bcb2fa1020cb295e3c105ca912c853cbbe84d1d196a32bba361b'
    # The original author may suspend maintenance, here using the withmorten/spek-alternative forked version
    url "https://github.com/withmorten/spek-alternative/releases/download/#{version}/spek-alternative-#{version}.dmg"
    appcast 'https://github.com/withmorten/spek-alternative/releases.atom'
  end

  name 'Spek'
  homepage 'http://spek.cc/'

  app 'Spek.app'
end
