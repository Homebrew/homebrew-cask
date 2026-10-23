cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"
  os macos: "dmg", linux: "AppImage"

  version "1.27.3"
  sha256 arm:          "fe9db7a200648be8c1087ac9c49f9393523938a077e84420ac295b66c89d802b",
         intel:        "6838f1eba9d6b143324a535642e8a1ca280c50d293a8027069f5b1b03568b5ec",
         arm64_linux:  "5d4f44e162bcc7b2833c3f92a07c6913ecabf9811b66fbba459ebc747d6a6c0e",
         x86_64_linux: "3a3c024f6901cd9bd37b977ff8aa6fb37f77995779291a31b17ed1e20dab9da8"

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
