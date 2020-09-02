cask "qcad" do
  version "3.25.1"

  if MacOS.version <= :high_sierra
    sha256 "600f04ed9524d1d1f8471500e73c456665618e0774f791a562ed080f9cc02e4d"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "e6b811f9ca060a6e56fe6086a3ebff85cc1d2c9619659c808d2fa382daeceeb7"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast "https://www.qcad.org/en/download"
  name "QCAD"
  homepage "https://www.qcad.org/"

  app "QCAD.app"
end
