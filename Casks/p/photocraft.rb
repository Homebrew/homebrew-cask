cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.0"
  sha256 arm:          "b1b81f1d4b433578e6b9d2b9800e18d8e5fb60ebbc38977918d3529d1bdb140a",
         intel:        "b1b81f1d4b433578e6b9d2b9800e18d8e5fb60ebbc38977918d3529d1bdb140a",
         arm64_linux:  "e862fbcb8877b5635d35796a315edbf9b8bd90a1ceb524357c0800c58cde8f1a",
         x86_64_linux: "62d319592159f8e6909e252151196d23d9b7a243fc9f9095e5adf8ecbac9f03c"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
