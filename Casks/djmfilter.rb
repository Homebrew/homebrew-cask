cask 'djmfilter' do
  version :latest
  sha256 :no_check

  url 'https://xferrecords.com/product_downloads/30/freeware'
  name 'DJM Filter'
  homepage 'https://xferrecords.com/freeware'

  audio_unit_plugin 'DJMFilter.component'
  vst_plugin 'DJMFilter.vst'
end
