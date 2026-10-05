cask "hop" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.4"
  sha256 arm:          "a2a7b86c6aa0194a7f071562847c758c0f758b24cf82fc94bc252c9747bd6883",
         intel:        "9f1508aee70c3f8233d6bdaa8a34a8ebde8438878608b731ad347bed1dba2bfc",
         x86_64_linux: "60c9cd49e40315dc931254cfdd3f4810b882f44c888d391729aadd08f55b8743"

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
end
