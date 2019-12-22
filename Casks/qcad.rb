cask 'qcad' do
  version '3.24.0'

  if MacOS.version <= :high_sierra
    sha256 '785bed422b5fe01cb286ab9091b316b37bb208523ad83eba5edbf4f3135af947'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 '6662bb59ee93396b69322f4271992a54e3cc6dc04ce76b105022e1d55885e7e8'
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast 'https://www.qcad.org/en/download'
  name 'QCAD'
  homepage 'https://www.qcad.org/'

  app 'QCAD.app'
end
