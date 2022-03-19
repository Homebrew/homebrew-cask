cask "liteide" do
  version "37.4"
  sha256 "a86e48592782e018edb693528ed60c4bcdbd0bac33ec9fd09f44cfff4ed7e77a"

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.15.2.zip"
  name "LiteIDE"
  desc "Go IDE"
  homepage "https://github.com/visualfc/liteide"

  depends_on macos: ">= :sierra"

  app "liteide/LiteIDE.app"
end
