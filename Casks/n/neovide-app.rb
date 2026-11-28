cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  filename = on_system_conditional macos: "Neovide-#{arch}-apple-darwin.dmg",
                                   linux: "neovide.AppImage"

  version "0.17.5"
  sha256 arm:          "290dc7c4a8f4c0d9acf5846b4c63ad9ab088d8619ff3cf09484156f0424710ef",
         intel:        "25492df98348609093269b1999d5993f25a05b8815cd2ed6a313733e36185be9",
         x86_64_linux: "972d14cebf7560c3473eae94c1f6ec6d01a5d7dfc4b0e5b2aa15bd70ce14eb6b"

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
