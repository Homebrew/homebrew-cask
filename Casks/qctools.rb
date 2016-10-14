cask 'qctools' do
  version '0.7.3.20161011'
  sha256 '7a515466f541c07d37be94fbdeaca2669351e01a78ecb433b6cdf750b53a9342'

  url "https://github.com/bavc/qctools/releases/download/v#{version.major_minor_patch}/QCTools_#{version}_mac.dmg"
  appcast 'https://github.com/bavc/qctools/releases.atom',
          checkpoint: '19f1602531af9b2de0b5b8ca76714b9869d9a66abcdee863517d6a14fe2d5907'
  name 'QCTools'
  homepage 'https://github.com/bavc/qctools'

  app 'QCTools.app'
end
