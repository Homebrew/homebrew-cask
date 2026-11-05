cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.1"
  sha256 arm:          "ca01efef41f1e57bb5a19d70c5f94e64dd3a35d65152c54d127f8a8f701a241d",
         intel:        "ca01efef41f1e57bb5a19d70c5f94e64dd3a35d65152c54d127f8a8f701a241d",
         arm64_linux:  "2e1de3e773203e20c11faaafd67f590c04471545154443e5c0c41769d4a6b45f",
         x86_64_linux: "0f524975bc54c9177ac806dbcb9cbe1d9f7bfb189fa5f6cb49f5672246377e2f"

  on_macos do
    app "FilmCraft.app"

    zap trash: "~/Library/Application Support/FilmCraft"
  end
  on_linux do
    app_image "filmcraft-#{version}-linux-#{arch}.AppImage", target: "FilmCraft.AppImage"

    zap trash: "~/.local/share/filmcraft"
  end

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-#{url_end}"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://getartcraft.com/apps/filmcraft"
end
