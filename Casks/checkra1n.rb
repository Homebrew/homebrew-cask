cask 'checkra1n' do
  version '0.9.5'
  sha256 '6c1a1b9d8cbb3f2879a952d5748f3fec47e00e9d5f9bb7d07178212a5c2181df'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
