cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"
  os macos: "app.#{arch}.zip", linux: "AppImage"

  version "2026.1115.0-lazer"
  sha256 arm:          "600ed8d8a41ab3d3ea64ec4cbf5220b53b6b6edd32f92b743264faacaee61faa",
         intel:        "02581ddca6f6323afb5b72b96791139fe8222d0f3cc54e68dfd54130925f2292",
         x86_64_linux: "44ea8777b823007aa0edb89b74e17f57b0698a89ac017747f72b0113531eef9e"

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
