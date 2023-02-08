cask "liteide" do
  version "38.1"
  sha256 "08d2cf9245185573503259261a5c780d8d428d09e24b8ceb35180cb8f856ba8b"

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos11-qt5.15.2.zip"
  name "LiteIDE"
  desc "Go IDE"
  homepage "https://github.com/visualfc/liteide"

  depends_on macos: ">= :sierra"

  app "liteide/LiteIDE.app"
end
