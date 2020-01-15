cask 'qcad' do
  version '3.24.2'

  if MacOS.version <= :high_sierra
    sha256 '4acc2104ae4876daaccc2f9e93121705d13572d49d8df9aabe6a675525129fa0'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 '1e2aeffa260fd1fff15c5df4e0731d2ac05a287cf7c08f1cdabdccccd79f79a9'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
