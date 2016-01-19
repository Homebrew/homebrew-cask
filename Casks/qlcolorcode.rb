cask 'qlcolorcode' do
  version '2.0.4'
  sha256 '6ae0b42c761181e493c94dcfabf22844859820055e77c780d92e56fc476fd9cb'

  url 'https://github.com/anthonygelibert/QLColorCode/blob/7cfb0487a9804474d73a85317846cb8fd1a370de/bin/QLColorCode.qlgenerator.zip?raw=true'
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '143ecf2eb923c9608874fe43382c52d3979a7475378d605482e9ce5b2ab50dbf'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'
  license :oss

  qlplugin 'QLColorCode.qlgenerator'
end
