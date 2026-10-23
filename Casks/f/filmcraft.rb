cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "1ed0bec3be74766fa6c81d6289c6763d5696f93946e7d698162498143c72b87e",
         intel:        "1ed0bec3be74766fa6c81d6289c6763d5696f93946e7d698162498143c72b87e",
         arm64_linux:  "a5ec2c07b2a49b9616bebe54e4ee91cef37b4a24963a2cb723f91582ac2ceabb",
         x86_64_linux: "10933f9176835805459bb60dcb8102392b065467eca110db7ee15b55a11c9e96"

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
