cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"

  version "1.26.1"
  sha256 arm:   "f7c2f5360ce12e6de1df3d9dbc0888634fc9e4a3db5a7d2f80548155a82863b4",
         intel: "ed212232177419a76cabb5b690d22401712121da2d02e3d4ecb04cb52c67d893"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}-#{arch}.dmg",
      verified: "github.com/httptoolkit/httptoolkit-desktop/"
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
