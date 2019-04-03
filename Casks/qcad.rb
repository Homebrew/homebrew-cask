cask 'qcad' do
  version '3.22.0'

  if MacOS.version <= :high_sierra
    sha256 '9155a11b10991dbeb5bac5a15b810354d0462f13bee8317e4327765d83582466'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 'c14c3b030b729e4e09abecfa85c077fcadbd2c3856fed26fe2d3c0413f11acd6'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
