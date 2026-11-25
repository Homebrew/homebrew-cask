cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  filename = on_system_conditional macos: "Neovide-#{arch}-apple-darwin.dmg",
                                   linux: "neovide.AppImage"

  version "0.17.4"
  sha256 arm:          "5a4647cce0703552906552ae1d0d955e221f3153af832fa6739ffc0592774e2a",
         intel:        "f32c54b8978d9472a541533b3e0a7c6fb4625ca53f4ed1816970b422534df4e1",
         x86_64_linux: "70e84a4cd20f8ff989e90d5ffd44f260ce305d53591eaa8fa66d1cf150da54f6"

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
