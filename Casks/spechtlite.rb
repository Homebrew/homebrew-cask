cask 'spechtlite' do
  version '0.9.0'
  sha256 '9d27de394ff10222a410d51bb98d894b82684276406ddcd219f00b0280cf7398'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: '2449df94491e7bb164efe98b5e2884e703d7b899ef2ea33b2834ffd4fbc3ccad'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
