cask 'qcad' do
  version '3.22.1'

  if MacOS.version <= :high_sierra
    sha256 'a05bd044702f3e1f582e4b527a4d520ac433ad6231fd3161f3c85ccf3574db17'
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
