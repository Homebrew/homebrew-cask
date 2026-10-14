cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "31d3fc5bdde7acffa506e063263d2a1bcb913f405ddef47d405742514ee65527",
         intel: "39ae0083ed6840e80533d4b08187d06fc40e474a2ded35a901d7548c4b5cf6ed"

  url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz"
  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/net.dannote.open-pencil",
    "~/Library/Caches/net.dannote.open-pencil",
    "~/Library/Preferences/net.dannote.open-pencil.plist",
    "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
  ]
end
