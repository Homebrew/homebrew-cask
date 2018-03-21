cask 'qcad' do
  version '3.19.2'
  sha256 '7b4c6207d070789f8dabadf4d0bcde813362097ba87d6db85b51d938af279575'

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-osx-10.9-10.13.dmg"
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
