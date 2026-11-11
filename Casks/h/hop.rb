cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.3"
  sha256 arm:          "bf92a79eed2fd62cf938d0e3c3fdb9a555d01272ddb3a34276e2f123fac147f0",
         intel:        "f17166757ff89fab66a27ee7ef3bf2ac800626f4234b9aa6fe8243b4aa1dc343",
         x86_64_linux: "6ca027c26549debbe4591d808344b14deefc3ca408fffc1008634983360aa59e"

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
