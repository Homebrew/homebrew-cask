cask 'anyipsum' do
  version '0.4.0'
  sha256 '42bebdd1b4d5ca7f7a9da6973e603922e26b07e75293a33ee97dbedfc7514b36'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
