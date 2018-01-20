cask '8bitshaper' do
  version :latest
  sha256 :no_check

  url 'https://xferrecords.com/product_downloads/28/freeware'
  name '8-Bit Shaper'
  homepage 'https://xferrecords.com/freeware'

  audio_unit_plugin '8BitShaperOSX/8BitShaper.component'
  vst_plugin '8BitShaperOSX/8BitShaper.vst'
end
