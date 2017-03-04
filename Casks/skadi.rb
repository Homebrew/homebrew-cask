cask 'skadi' do
  version '1.1.0'
  sha256 '32a76f2d48d613c98dbedafd2c4904dde582d843100e6dfb1e860407e9c5392c'

  url "https://github.com/redcapital/skadi/releases/download/v#{version}/skadi-v#{version}.zip"
  appcast 'https://github.com/redcapital/skadi/releases.atom',
          checkpoint: '40d6e8f3a8d9382565bff1dc740497f5ccbad208962a6810b9a232e071e259d2'
  name 'skadi'
  homepage 'https://github.com/redcapital/skadi/'

  app 'skadi.app'
end
