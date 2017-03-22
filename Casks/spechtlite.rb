cask 'spechtlite' do
  version '0.10.3'
  sha256 '72c33be92eb3b111f62264403bfe56233f3a6777cbad9e9ea392630080915384'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: 'b378177850d4adc0f083de9d3b44bcc2ff71cd043ea66090b5a9ebf0859c6a9a'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
