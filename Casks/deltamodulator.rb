cask 'deltamodulator' do
  version :latest
  sha256 :no_check

  url 'https://xferrecords.com/product_downloads/26/freeware'
  name 'Delta Modulator'
  homepage 'https://xferrecords.com/freeware'

  audio_unit_plugin 'DeltaModulator.component'
  vst_plugin 'DeltaModulator.vst'
end
