cask "liteide" do
  version "38.2"
  sha256 "90efd35b72cd5b51663e40c2abb51758427892a602a575ae9ed16e4e369295b6"

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.15.2.zip"
  name "LiteIDE"
  desc "Go IDE"
  homepage "https://github.com/visualfc/liteide"

  livecheck do
    url :url
    regex(/(?:x[._\s-]?)(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "liteide/LiteIDE.app"

  # No zap stanza required
end
