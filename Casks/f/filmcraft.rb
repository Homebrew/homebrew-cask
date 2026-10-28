cask "filmcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.0"
  sha256 arm:          "9f87564f83f55d9dea32ceeb73aa3cb74b15aec05347dd3e163fd0a6abef6b27",
         intel:        "9f87564f83f55d9dea32ceeb73aa3cb74b15aec05347dd3e163fd0a6abef6b27",
         arm64_linux:  "b6e447df17efb3ade880d412a0c3855177320dc4b8cee90d395d343c9fb442c4",
         x86_64_linux: "133b8b88db6dee3fa47dd39fc1c9dd9228283806a37b951587cc6365aec9a3d3"

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
