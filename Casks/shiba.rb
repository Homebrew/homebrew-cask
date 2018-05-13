cask 'shiba' do
  version '1.2.0'
  sha256 '8d5da51fba5ead6343e4f35532103c6c3cf28b649322d363b3ce188f62886bb4'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: 'f2c0d3b68451b1df8e36ab3510a7c6fc493f10bfff699fbd3da4cad8d0d1ce26'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
