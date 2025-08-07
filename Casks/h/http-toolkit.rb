cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "f2605475401cb8e4405807612cef4eef9791dc865d70b3f094f0a0fca06566ca",
         intel: "f7615aa982b3aeb40ae010cef04886cd4e9b9ad1d9f8d1f6f257c3d852bbc0c5"

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}-#{arch}.dmg",
      verified: "github.com/httptoolkit/httptoolkit-desktop/"
  name "HTTP Toolkit"
  desc "HTTP(S) debugging proxy, analyzer, and client"
  homepage "https://httptoolkit.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
