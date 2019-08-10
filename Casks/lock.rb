cask 'lock' do
  version '1.0.2'
  sha256 '648dfa66226f301cb29d3bccc6c90a8d7936daab45cc51fde2f2b2bec5538d7c'

  url "https://github.com/duksis/Lock/releases/download/v#{version}/lock.dmg"
  appcast 'https://github.com/duksis/Lock/releases.atom'
  name 'Lock'
  homepage 'https://github.com/duksis/Lock'

  app 'Lock.app'
end
