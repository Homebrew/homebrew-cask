cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "b7fcfcbc5d3e486b0c13a3caa90f442c256413bd3226108efe013ed686ec9c98",
         intel: "1700ff3ac4c6391288d6b3ca00bd13bd59e3811ddb606869fbe7c319de87755e"

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
