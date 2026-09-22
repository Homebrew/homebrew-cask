cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"
  os macos: "app.#{arch}.zip", linux: "AppImage"

  version "2026.921.0-lazer"
  sha256 arm:          "470f61581a2ba7d4bbd147efaf91cfba301c24f44c9c1e1de26760d645238087",
         intel:        "fa4d4d6306838e5a041cc2fafce66e62e69f586aac5a5a330632fbcfa3ddf749",
         x86_64_linux: "dced9463b501009c95dbed891abd2f0acc2efb84ee4336f5b1cc3b7c04a5fc7d"

  on_macos do
    app "osu!.app"

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
