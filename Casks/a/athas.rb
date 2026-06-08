cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "4d65e1def8d8d2ac57fa8c7cce679c9111ad132f7a01f22426c64a24f1f19781",
         intel: "c9489c1e020b9b583fbf810707d7e88b25ebf8ab6e8cce97ef8097993812ccff"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
