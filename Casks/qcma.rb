cask 'qcma' do
  version '0.3.10'
  sha256 '9273f68bc59a3ddb379d8051d18c95ff0d8935bd7b3a1c4d46653fde710c5882'

  # nekmo.com/qcma was verified as official when first introduced to the cask
  url "http://codestation.nekmo.com/qcma/#{version}/osx/qcma-#{version}.dmg"
  appcast 'https://github.com/codestation/qcma/releases.atom',
          checkpoint: '6b1af368d82aaa0f8ed6b0757ed968260426dec2b235b088d9723326d46d5542'
  name 'Qcma'
  homepage 'https://codestation.github.io/qcma/'

  app 'Qcma.app'
end
