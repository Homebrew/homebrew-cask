cask 'harbor' do
  version '0.1.1'
  sha256 '85ca5aadd2008a912cb497f4867b2dd7236e5771fd15a6f8f6c4642893cea155'

  url "https://github.com/devmynd/harbor/releases/download/v#{version}/Harbor.app.zip"
  appcast 'https://github.com/devmynd/harbor/releases.atom',
          checkpoint: '733a116d08ac0afd4d67f1205b5aae3e0c0a7faa12385e1d42fb1d99669e2c98'
  name 'Harbor'
  homepage 'https://github.com/devmynd/harbor'
  license :mit

  app 'Harbor.app'
end
