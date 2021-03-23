cask "qctools" do
  version "1.2"
  sha256 "b474389e87283ef3b190ff5427272077c938a2503328c3d4fc08d77ccebead46"

  url "https://mediaarea.net/download/binary/qctools/#{version}/QCTools_#{version}_mac.dmg"
  name "QCTools"
  homepage "https://mediaarea.net/QCTools"

  livecheck do
    url "https://github.com/bavc/qctools"
    strategy :git
  end

  app "QCTools.app"
end
