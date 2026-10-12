cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.0"
  sha256 arm:          "3e8d92a082c98aa3477c00313d0784c18f681e94ed91a494712d4d8b36297e3b",
         intel:        "3e8d92a082c98aa3477c00313d0784c18f681e94ed91a494712d4d8b36297e3b",
         arm64_linux:  "d6994dd3e25c5505119eb2763eb34b590a736ac90dcaec608b77aac4d3305b37",
         x86_64_linux: "c0b5a5d0f0e71176aa806c895f8ca513f2d505b70fef85b874bbe23c91232bc7"

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
