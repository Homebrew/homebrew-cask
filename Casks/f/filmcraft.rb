cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.0"
  sha256 arm:          "2cf5aae68deea037e24185a8d29a78960183ff15c436c0131b0476218d733cf2",
         intel:        "2cf5aae68deea037e24185a8d29a78960183ff15c436c0131b0476218d733cf2",
         arm64_linux:  "bf9823e94e44b7db467b2d9351d4249997ecff3ec48cab140a9cdf7c3d94a8d7",
         x86_64_linux: "e00daf6f3976756d0c9476848ed55b5e84e3f1f080e0190f3576552c1df0f686"

  on_macos do
    app "FilmCraft.app"

    zap trash: "~/Library/Application Support/FilmCraft"
  end
  on_linux do
    app_image "filmcraft-#{version}-linux-#{arch}.AppImage", target: "FilmCraft.AppImage"
  end

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-#{url_end}"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://getartcraft.com/apps/filmcraft"
end
