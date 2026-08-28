cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "49f368ecc7c2d3203c56a48635ff8a301142f61f4abab0dbfe8d25b6b9b3d847",
         intel: "deb65826c980dc79d29e9cb1c73cfe3f6a84bba776909755605680639bd02cc5"

  url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz",
      verified: "github.com/open-pencil/open-pencil/"
  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on :macos

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/net.dannote.open-pencil",
    "~/Library/Caches/net.dannote.open-pencil",
    "~/Library/Preferences/net.dannote.open-pencil.plist",
    "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
  ]
end
