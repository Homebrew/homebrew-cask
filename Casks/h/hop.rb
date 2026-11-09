cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.1"
  sha256 arm:          "a8b3bdc84fb3faeff9621abda5cfee6d74fc3e432e01a67e80b66a33514a5f09",
         intel:        "0fb842f3dff01643babddcbb9e4a0ef3b75484886dbb4a303e211aa982361730",
         x86_64_linux: "d0a472f3fa3df34ef1d9e359fba544eb21ea95b56ca2453687162e97d9c7c24f"

  on_macos do
    depends_on macos: :monterey

    app "HOP.app"

    zap trash: [
      "~/Library/Application Support/net.golbin.hop",
      "~/Library/Caches/net.golbin.hop",
      "~/Library/Logs/net.golbin.hop",
      "~/Library/WebKit/net.golbin.hop",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "HOP-linux-#{arch}.AppImage", target: "HOP.AppImage"

    zap trash: [
      "~/.cache/net.golbin.hop",
      "~/.local/share/net.golbin.hop",
    ]
  end

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-#{os}-#{arch}.#{url_end}"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
