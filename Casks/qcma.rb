cask 'qcma' do
  version '0.4.1'
  sha256 'f920aeb3497285af12e2e105977347675e5a46df505bfa32cec32965eea6a960'

  # github.com/codestation was verified as official when first introduced to the cask
  url "https://github.com/codestation/qcma/releases/download/v#{version}/Qcma_#{version}.dmg"
  appcast 'https://github.com/codestation/qcma/releases.atom'
  name 'Qcma'
  homepage 'https://codestation.github.io/qcma/'

  app 'Qcma.app'
end
