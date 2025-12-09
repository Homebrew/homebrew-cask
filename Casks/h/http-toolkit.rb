cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"

  version "1.24.1"
  sha256 arm:   "14920afbf7b9e481f58f0a847a8ce9cadc96d1565b055d5e660bf66a3e586fb3",
         intel: "5cff87776fe43ddbe5ea81e1089251f79ad84aca8955c7f0b34656057f2a7717"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}-#{arch}.dmg",
      verified: "github.com/httptoolkit/httptoolkit-desktop/"
  name "HTTP Toolkit"
  desc "HTTP(S) debugging proxy, analyzer, and client"
  homepage "https://httptoolkit.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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
