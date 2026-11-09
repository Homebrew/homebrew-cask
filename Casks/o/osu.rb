cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"
  os macos: "app.#{arch}.zip", linux: "AppImage"

  version "2026.1005.0-lazer"
  sha256 arm:          "ee9c2c3224253f7cd23d280fe8bf3d9ba1e16189f627fa21f26c9fbf78aa716c",
         intel:        "d27186e978f53d0d7a1ee7bb488f892efc193a8b297aba9a484eb6178c62d04e",
         x86_64_linux: "284108e65373a8339beeca40e2c14b1528c177bd6ce1eb21407639f8e508da2e"

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
