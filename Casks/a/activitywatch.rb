cask "activitywatch" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"
  sha256 arm:          "225916c1e641151638a062c796743ea21ba29c5d1bc162d84fc5591473d822db",
         intel:        "d10abf59d0c86a4cbf137b455326201b4fc6691a84d63b47c58779c90e1169ff",
         x86_64_linux: "dedb9e2f2059c764c0fd9f72093d417699b1121c8aced7cf6242eca17c799549"

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
