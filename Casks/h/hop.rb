cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.4"
  sha256 arm:          "1ec5fb98f29ca37f12e43a171c791d0ba391b024741ecc72d4f8bd4f0f2991a4",
         intel:        "a01f678f1aeaa1e63da6b0da77c7e5bf809cb82568122de36cb88cf00e3b36a8",
         x86_64_linux: "cbb7a908155cce9eee2aa464ac4b2864410262e1d78f0b06e0331aaab5151024"

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
