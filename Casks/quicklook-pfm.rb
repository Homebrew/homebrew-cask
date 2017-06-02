cask 'quicklook-pfm' do
  version '1.1'
  sha256 '53308ac3d7f0f8ed02adb2feff282764fdeadb32352b0776caeaec3d6a514333'

  url "https://github.com/lnxbil/quicklook-pfm/releases/download/#{version}/quicklook-pfm-#{version}.zip"
  appcast 'https://github.com/lnxbil/quicklook-pfm/releases.atom',
          checkpoint: '810c3859e5a5c837d86d260489e7514656ac03454a686dba72f5fedc85e209f1'
  name 'quicklook-pfm'
  homepage 'https://github.com/lnxbil/quicklook-pfm'

  qlplugin 'Quicklook-PFM.qlgenerator'
end
