cask 'spechtlite' do
  version '0.9.0.beta7'
  sha256 '347061bbb20154c883845f37ab9fdab5128017ae97a4f2cf116a7dbe2d3b9c9b'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: 'e900dd067c2c73cf0494391c53f9af48d49031b200d73fed080b5e0e9577ce02'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
