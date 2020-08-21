cask "qcad" do
  version "3.25.0"

  if MacOS.version <= :high_sierra
    sha256 "f904031d67ee95adadc773d314ca154c448324447b628527df51d213f90e2c70"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "6ceb9145f8646d5a2c5c9de59e952b68bbdf1f544275b7ada95d0173eed84ea4"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-10.15.dmg"
  end

  appcast "https://www.qcad.org/en/download"
  name "QCAD"
  homepage "https://www.qcad.org/"

  app "QCAD.app"
end
