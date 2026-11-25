cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"
  os macos: "dmg", linux: "AppImage"

  version "1.27.4"
  sha256 arm:          "06397ca729d7c77fbb43fc27029301b782f5fed4917b7b9f3c2394a56c3808be",
         intel:        "1a71439ff7dcf4374f5de1fcc251bb553c8546327e4c465dc760a8a62a9b04f9",
         arm64_linux:  "e1ab69e80dedc429f002b8ba795969c4aa8ace5b4151fa963e70baf86f08d7f8",
         x86_64_linux: "f3cccb975ca617341d50c2988fcedfa2522d009792376ca9e71d22727d852dc8"

  on_macos do
    depends_on macos: :monterey

    app "HTTP Toolkit.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/tech.httptoolkit.desktop.sfl*",
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
