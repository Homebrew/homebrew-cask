cask 'qcad' do
  version '3.24.3'

  if MacOS.version <= :high_sierra
    sha256 '2313e906d1892ad7a433ff23074c9f28ab747e7731231c0c8a02ff6eab5ae44a'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 '9c03efd3d5c41952637cd6bde7b090466ef4f8d87229f509194268f3cadff4ef'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
