cask 'predator' do
  version '1.0.0'
  sha256 '403b78988441ad6e1de64d90153722e778dc2f383d4420e5368792b203e8b410'

  url "https://github.com/vpeschenkov/predator/releases/download/#{version}/Predator.saver.zip"
  appcast 'https://github.com/vpeschenkov/predator/releases.atom'
  name 'Predator Screensaver'
  homepage 'https://github.com/vpeschenkov/predator/'

  screen_saver 'Predator.saver'

  zap trash: '~/Library/Caches/Predator'
end
