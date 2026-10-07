cask "activitywatch" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0"
  sha256 arm:          "55013abc41747e6e7575f35740eeeacd6d70013f581c2a4dd585a51f6603f32b",
         intel:        "02c57f5c8fd63bf27191154a2f5181bb9bbca9ab4191f57f75a6b09d9dcc8ddd",
         x86_64_linux: "5a94338bf1e0f6d9d9f960d9e423cea2d1affd0a8b7eb21f96d3c19711f38346"

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
