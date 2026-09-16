cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "68fa5101648c25298bd5b4d9e3164796a5e1a430f716af2288403cb6e8592d2e",
         intel: "3413087959089e782066489787e15682191898db8c9740b5af3d6fa5627f66e4"

  url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz"
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
