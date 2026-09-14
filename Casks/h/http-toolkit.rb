cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"
  os macos: "dmg", linux: "AppImage"

  version "1.27.1"
  sha256 arm:          "9fb15e0de154cb88debbc298bdc96e7c20d657c4eb138555b6c0603e1dcb07ec",
         intel:        "9f670af93770bd85d7507e67d2ec38c85820ecd0a433a8998a090d09fcf65f8e",
         arm64_linux:  "2a99611f77f5e8faf4b27be6fe709b6775964fed36c003dfb5c521a7f51a6a08",
         x86_64_linux: "c901cc8ebd51689f5faec76e46e31f3f011aba1eab486d335fa782d279a203fb"

  on_macos do
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
  on_linux do
    app_image "HttpToolkit-#{version}-#{arch}.AppImage", target: "HTTP Toolkit.AppImage"

    zap trash: [
      "~/.cache/httptoolkit-server",
      "~/.config/httptoolkit",
    ]
  end

  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HttpToolkit-#{version}-#{arch}.#{os}"
  name "HTTP Toolkit"
  desc "HTTP(S) debugging proxy, analyzer, and client"
  homepage "https://httptoolkit.tech/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
