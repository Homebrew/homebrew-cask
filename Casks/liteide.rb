cask "liteide" do
  version "38.0"
  sha256 "a48f7ab142144ba0c3b7fee1ea9cb2c03a999d48f0a2e486270cb2cd6e6762d8"

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.15.2.zip"
  name "LiteIDE"
  desc "Go IDE"
  homepage "https://github.com/visualfc/liteide"

  depends_on macos: ">= :sierra"

  app "liteide/LiteIDE.app"
end
