cask 'qcad' do
  version '3.23.0'

  if MacOS.version <= :high_sierra
    sha256 '8668cf4407331bac9cdfeed2a735eb34a9bf8b29d9982c693416d0c36ab412c7'
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
