cask 'anyipsum' do
  version '0.2.0'
  sha256 '14beb22ab22fbb289e05ad658fcb7a52625f4f090bdc2d26ed5b1e2069d17eff'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
