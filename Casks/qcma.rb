cask 'qcma' do
  version '0.4.1'
  sha256 'f920aeb3497285af12e2e105977347675e5a46df505bfa32cec32965eea6a960'

  # github.com/codestation was verified as official when first introduced to the cask
  url "https://github.com/codestation/qcma/releases/download/v#{version}/Qcma_#{version}.dmg"
  appcast 'https://github.com/codestation/qcma/releases.atom',
          checkpoint: 'c044a6988f1ca7d34301003b44d076ccccd63dd74fdbd561520586bee02fe328'
  name 'Qcma'
  homepage 'https://codestation.github.io/qcma/'

  app 'Qcma.app'
end
