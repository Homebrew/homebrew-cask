cask 'nteract' do
  version '0.1.0'
  sha256 '6b94849ed2c6cf69920e0ee06972ae58a533ab02baa8fdedcfe84cd6995812e1'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '3a05865a1a9fbf2494b32d3ed34ac52a1b336d58f46cce383df3e3c31bbb0a13'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
