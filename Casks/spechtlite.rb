cask 'spechtlite' do
  version '0.10.6'
  sha256 '03c25351b7a10dc6f8e09e39293f9b2b54b3720caaba03a863dbc3f324611b1c'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: '100e05cc7e529b90e2ad52a5a0deb4cf35ad525514028f200253b9271db887f7'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
