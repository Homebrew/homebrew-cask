cask 'quickpvr' do
  version '4.0'
  sha256 '806ddbe5615c3ec73086783b63475fa07ee589031e2c90a9a807e8f1b9584391'

  url 'http://www.limbic.com/downloads/QuickPVR_v4.zip'
  name 'QuickPVR'
  homepage 'http://www.limbic.com/quickpvr.html'
  license :bsd

  qlplugin 'quickpvr.qlgenerator'
end
