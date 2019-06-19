cask 'anyipsum' do
  version '0.4.0'
  sha256 'e6341a3e2596898d3ebf6e3e201d9fedb485af314e2bcbe110a44b96f706c49c'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
