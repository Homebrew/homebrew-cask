cask "http-toolkit" do
  arch arm: "arm64", intel: "x64"
  os macos: "dmg", linux: "AppImage"

  version "1.27.2"
  sha256 arm:          "fef5d5b808dc1237bac93c8beb164ee0a7f2ddff028881f573303ce2c1a331b4",
         intel:        "be1784311f19c83cf4489c33fe4de752bc291f4bb50c437c571897567701d17d",
         arm64_linux:  "5e8eb5283572750025bc010fb7d2fd23570ce3645d3d3129e4d36c328dbc4c0c",
         x86_64_linux: "1723a0e2951a1c36472a5cc070751e0ab0e9c3d9461919e2ea4807164edaab1d"

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
