cask 'skadi' do
  version '1.1.0'
  sha256 '32a76f2d48d613c98dbedafd2c4904dde582d843100e6dfb1e860407e9c5392c'

  url "https://github.com/redcapital/skadi/releases/download/v#{version}/skadi-v#{version}.zip"
  appcast 'https://github.com/redcapital/skadi/releases.atom'
  name 'skadi'
  homepage 'https://github.com/redcapital/skadi/'

  app 'skadi.app'
end
