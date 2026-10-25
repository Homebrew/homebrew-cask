cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "1313efde320c25361c1bd015c47d18cc4ad40c9215e1eabf2a8ec5db6a7396ed",
         intel:        "1313efde320c25361c1bd015c47d18cc4ad40c9215e1eabf2a8ec5db6a7396ed",
         arm64_linux:  "787c21759e05b33b6e2c429b03ce0b53d065a11f3827881296f3661f7b57fb8b",
         x86_64_linux: "d2e604faa0546864485741703a2879c6ba2c55cc7f5cc4ba7d7dac1443a1a6ee"

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
