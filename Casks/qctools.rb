cask "qctools" do
  version "1.1"
  sha256 "53a250ccfad607dc04820c8159a3cc006c5c2ccb3b272d38ab1ddf011a81ef3e"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  appcast "https://github.com/bavc/qctools/releases.atom"
  name "QCTools"
  homepage "https://mediaarea.net/QCTools"

  app "QCTools.app"
end
