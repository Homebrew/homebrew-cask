cask "qcad" do
  version "3.25.2"

  if MacOS.version <= :high_sierra
    sha256 "33aff3060a27956cc33cd738bef3d385a7cc2a408a1662605422b99af5275750"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "6f3ecfdcfd2411acb5477894a0725ddda8cc7027542e34946b7c33a6cbfd32df"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast "https://www.qcad.org/en/download"
  name "QCAD"
  homepage "https://www.qcad.org/"

  app "QCAD.app"
end
