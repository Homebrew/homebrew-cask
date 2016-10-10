cask 'slender' do
  version '2.2.2'
  sha256 '7d3486efb8d6b4cdce8179b423616642238081e510292d215a9c78210913afb5'

  url "http://downloads.dragonforged.com/slender#{version.no_dots}.zip"
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender',
          checkpoint: '1ece434f3b6a656a5f0106b147ecc9fbbc1e9e731a34d531b37c42a9db8c6675'
  name 'Slender'
  homepage 'http://dragonforged.com/slender/'

  app 'Slender.app'
end
