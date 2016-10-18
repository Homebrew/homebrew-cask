cask 'quicklook-pfm' do
  version '1.1'
  sha256 '53308ac3d7f0f8ed02adb2feff282764fdeadb32352b0776caeaec3d6a514333'

  url "https://github.com/lnxbil/quicklook-pfm/releases/download/#{version}/quicklook-pfm-#{version}.zip"
  appcast 'https://github.com/lnxbil/quicklook-pfm/releases.atom',
          checkpoint: '6bd737e8e514aed099b266761b2c0f223cbb689e2b5237872a7e3d782ea1a2e7'
  name 'quicklook-pfm'
  homepage 'https://github.com/lnxbil/quicklook-pfm'

  qlplugin 'Quicklook-PFM.qlgenerator'
end
