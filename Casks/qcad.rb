cask 'qcad' do
  version '3.22.1'

  if MacOS.version <= :high_sierra
    sha256 '0003262298641edd4c996cb6312b2340b94c692e998c2c350a5b75f490f74ae2'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 '13bf52d28147e95a7e5fbc0e6f1b6c6a28d37ad0470e3ddf61f53928d69feab7'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
