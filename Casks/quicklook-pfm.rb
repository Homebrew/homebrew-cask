cask :v1 => 'quicklook-pfm' do
  version '1.1'
  sha256 '53308ac3d7f0f8ed02adb2feff282764fdeadb32352b0776caeaec3d6a514333'

  url "https://quicklook-pfm.googlecode.com/files/quicklook-pfm-#{version}.zip"
  homepage 'https://code.google.com/p/quicklook-pfm/'
  license :oss

  qlplugin 'Quicklook-PFM.qlgenerator'
end
