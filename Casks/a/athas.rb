cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "65b9eb1fb02091bc323279d9a7280de7c1f7aba0fa3efddeb1ece46c44c5dd11",
         intel: "e3d2c3ed95a30d1c14dce002141d709de10583a36c9e64fe42f9552f44b7bab8"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
