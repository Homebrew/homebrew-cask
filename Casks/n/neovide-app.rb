cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  filename = on_system_conditional macos: "Neovide-#{arch}-apple-darwin.dmg",
                                   linux: "neovide.AppImage"

  version "0.17.2"
  sha256 arm:          "45f6bbec3f067ae595578127249714411dc2a8fb37a34f598eb8175ac767ea7b",
         intel:        "3f81dce5f8507fa6602c5d194b79d28bc7d9c0bccb5b0380c5648bda25f22a76",
         x86_64_linux: "99f9b9ffd74d4d20bbb86ea1aaaf46eb2b6617a7193a0f719f046568034d9772"

  on_macos do
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
