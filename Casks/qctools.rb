cask "qctools" do
  version "1.2"
  sha256 "b474389e87283ef3b190ff5427272077c938a2503328c3d4fc08d77ccebead46"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  appcast "https://github.com/bavc/qctools/releases.atom"
  name "QCTools"
  homepage "https://mediaarea.net/QCTools"

  app "QCTools.app"
end
