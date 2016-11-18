cask 'poi' do
  version '7.2.1'
  sha256 '4dffcb2790d22c2769f60f8615eff9421bc44320ed759ddd2458c46f6c716466'

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  name 'poi'
  homepage 'https://github.com/poooi/poi'

  app 'poi.app'
end
