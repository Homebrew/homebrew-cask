cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"

  version "1.27.1"
  sha256 arm:   "9fb15e0de154cb88debbc298bdc96e7c20d657c4eb138555b6c0603e1dcb07ec",
         intel: "9f670af93770bd85d7507e67d2ec38c85820ecd0a433a8998a090d09fcf65f8e"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}-#{arch}.dmg"
  name "HTTP Toolkit"
  desc "HTTP(S) debugging proxy, analyzer, and client"
  homepage "https://httptoolkit.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "HTTP Toolkit.app"

  zap trash: [
    "~/Library/Application Support/HTTP Toolkit",
    "~/Library/Caches/httptoolkit-server",
    "~/Library/Logs/HTTP Toolkit",
    "~/Library/Preferences/httptoolkit",
    "~/Library/Preferences/tech.httptoolkit.desktop.plist",
    "~/Library/Saved Application State/tech.httptoolkit.desktop.savedState",
  ]
end
