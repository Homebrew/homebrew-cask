cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  filename = on_system_conditional macos: "Neovide-#{arch}-apple-darwin.dmg",
                                   linux: "neovide.AppImage"

  version "0.17.3"
  sha256 arm:          "024f11f8e5a69b58cd9f9c01cf5d6bbe5c4813474f0c5cc1150cddb70e7cd2cc",
         intel:        "db77f38e876c21ecef80d7054b46b01730fd9075459037cba4ce022b691ac4b8",
         x86_64_linux: "eda631003273819e84d2d4b2a4d8229da02fa027e081b7d166f0d630f7811340"

  on_macos do
    depends_on macos: :monterey

    app "Neovide.app"
    binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

    zap trash: [
      "~/Library/Application Support/neovide",
      "~/Library/Saved Application State/com.neovide.neovide.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "neovide.AppImage", target: "Neovide.AppImage"
    binary "neovide.AppImage", target: "neovide"

    zap trash: "~/.local/share/neovide"
  end

  url "https://github.com/neovide/neovide/releases/download/#{version}/#{filename}"
  name "Neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"
end
