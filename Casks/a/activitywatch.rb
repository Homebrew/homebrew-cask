cask "activitywatch" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2"
  sha256 arm:          "8341d56b5b43a60ca04ea2a3cc5ffbfb5e661cdb6430145d9ceb0f49dca63d65",
         intel:        "b3e284c0db6683b1e1f8985e5bb58f7c27702eb070912c1c7f0c783bd6667780",
         x86_64_linux: "216575f31d47488d8865c70352f948c52711ca348e74fc2412da82e6273b3621"

  on_macos do
    url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-#{arch}.dmg"

    app "ActivityWatch.app"

    zap trash: [
      "~/Library/Application Support/activitywatch",
      "~/Library/Caches/activitywatch",
      "~/Library/Logs/activitywatch",
    ]
  end
  on_linux do
    url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-linux-x86_64.AppImage"

    depends_on arch: :x86_64

    app_image "activitywatch-linux-x86_64.AppImage", target: "ActivityWatch.AppImage"

    zap trash: [
      "~/.cache/activitywatch",
      "~/.config/activitywatch",
      "~/.local/share/activitywatch",
    ]
  end

  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "activitywatch@beta",
    "activitywatch@experimental",
  ]
end
