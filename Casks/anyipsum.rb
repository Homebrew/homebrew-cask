cask 'anyipsum' do
  version '0.3.0'
  sha256 'ffc52c772ca5447a842c692586d130bf853dc5024af958df5d87f1ce98d96e9c'

  url "https://github.com/jlowgren/AnyIpsum/releases/download/v#{version}/AnyIpsum.dmg"
  appcast 'https://github.com/jlowgren/AnyIpsum/releases.atom'
  name 'AnyIpsum'
  homepage 'https://github.com/jlowgren/AnyIpsum'

  app 'AnyIpsum.app'
end
