cask "qctools" do
  version "1.2.1"
  sha256 "6495a06e4b42b0d0f1298193ddc113aa6b7ac3c1337a2c6dfcd851a314f5c987"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  name "QCTools"
  homepage "https://mediaarea.net/QCTools"

  livecheck do
    url "https://github.com/bavc/qctools"
    strategy :git
  end

  app "QCTools.app"
end
