cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"
  os macos: "app.#{arch}.zip", linux: "AppImage"

  version "2026.1117.0-lazer"
  sha256 arm:          "50bd11533d5468ae9bc3c15aa24824cd26ef5beb983eed53cf20ff0d9949a55f",
         intel:        "32c84a4d696c868d86c43c6b76fda64e646420e388fbf1d403e550a9ff792aad",
         x86_64_linux: "4ebbcb5b581c036f16785500af5c8d13ad1e6d93196fd36be8f245c2a0ea1d2d"

  on_macos do
    app "osu!.app"

    uninstall quit: "sh.ppy.osu.lazer"

    zap trash: [
      "~/.local/share/osu",
      "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "osu.AppImage"

    zap trash: "~/.local/share/osu"
  end

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.#{os}"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "osu@tachyon"
end
