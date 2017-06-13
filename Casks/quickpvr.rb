cask 'quickpvr' do
  version '4.0'
  sha256 '806ddbe5615c3ec73086783b63475fa07ee589031e2c90a9a807e8f1b9584391'

  url "https://www.limbic.com/downloads/QuickPVR_v#{version.major}.zip"
  name 'QuickPVR'
  homepage 'http://www.limbic.com/quickpvr.html'

  qlplugin 'quickpvr.qlgenerator'
end
