cask "liteide" do
  version "37.1"
  sha256 "f739a15d05c227dc53c9501bfa8de917b1b2b7dcc8517c156a49bc55b75e8e67"

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.12.5.zip"
  appcast "https://github.com/visualfc/liteide/releases.atom"
  name "LiteIDE"
  desc "Open-source, cross-platform Go IDE"
  homepage "https://github.com/visualfc/liteide"

  depends_on macos: ">= :sierra"

  app "liteide/LiteIDE.app"
end
