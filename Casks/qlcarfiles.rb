cask 'qlcarfiles' do
  version '1.0'
  sha256 '50b4416952ceec61bdcb940afe7dde570fe94eaf0f054f777fb2c4cddfdd39f8'

  url 'https://blog.timac.org/2018/1112-quicklook-plugin-to-visualize-car-files/QLCARFiles.qlgenerator.zip'
  name 'QLCARFiles'
  homepage 'https://blog.timac.org/2018/1112-quicklook-plugin-to-visualize-car-files/'

  qlplugin 'QLCARFiles.qlgenerator'
end
