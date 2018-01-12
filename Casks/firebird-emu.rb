cask 'firebird-emu' do
  version '1.4'
  sha256 '65b4755ea5d72e6004972908ec8c416e96f9d5c466ab01379543c27e54439c6e'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-emu-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: '3d5d79db62eed582c732207e18f70b8289a93a6c95806e50a542b7caaf898705'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird-emu.app'
end
