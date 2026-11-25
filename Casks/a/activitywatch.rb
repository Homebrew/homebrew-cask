cask "activitywatch" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.3"
  sha256 arm:          "5462f3b90f9e1c0352061888d5f041029abb2ccfbe05e42c6dc63d91ff26bd4a",
         intel:        "6560ab224e21f004cc8b1b9cf0db523810cf00477a04aab9d5baf831076d18fe",
         x86_64_linux: "875aa539e81006e26695675dc55a14496d5a14fa7730495bda6a2e08ea92e59d"

  on_macos do
    url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-#{arch}.dmg"

    app "ActivityWatch.app"

    uninstall quit: "net.activitywatch.ActivityWatch"

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
