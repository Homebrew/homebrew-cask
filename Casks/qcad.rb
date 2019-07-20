cask 'qcad' do
  version '3.23.0'

  if MacOS.version <= :high_sierra
    sha256 '0003262298641edd4c996cb6312b2340b94c692e998c2c350a5b75f490f74ae2'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 '50e721239e6384f836e360c527b0d2b855bbe19da00512620f5ed059274f1daa'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
