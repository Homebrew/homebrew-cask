cask 'qcma' do
  version '0.3.10'
  sha256 '9273f68bc59a3ddb379d8051d18c95ff0d8935bd7b3a1c4d46653fde710c5882'

  # nekmo.com is the official download host per the vendor homepage
  url "http://codestation.nekmo.com/qcma/#{version}/osx/qcma-#{version}.dmg"
  name 'Qcma'
  homepage 'https://codestation.github.io/qcma/'
  license :gpl

  app 'Qcma.app'
end
