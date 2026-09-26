cask "activitywatch" do
  os macos: "macos-x86_64.dmg", linux: "linux-x86_64.AppImage"

  version "0.13.2"
  sha256 arm:          "22f3bce0e169457902b2c8d2967701cde887171f737d281dd414a210bd3090ed",
         intel:        "22f3bce0e169457902b2c8d2967701cde887171f737d281dd414a210bd3090ed",
         x86_64_linux: "fda7a9bd13d5d5902210c6552bf5693d4b2a30fce5aed3fef30a21ea8f47fc55"

  on_macos do
    url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-#{os}"

    app "ActivityWatch.app"

    zap trash: [
      "~/Library/Application Support/activitywatch",
      "~/Library/Caches/activitywatch",
      "~/Library/Logs/activitywatch",
    ]

    caveats do
      requires_rosetta
    end
  end
  on_linux do
    url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-#{os}"

    depends_on arch: :x86_64

    app_image "activitywatch-#{os}", target: "ActivityWatch.AppImage"

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
end
