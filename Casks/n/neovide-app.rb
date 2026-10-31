cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Neovide-#{arch}-apple-darwin.dmg", linux: "neovide.AppImage"

  version "0.17.1"
  sha256 arm:          "4ca5df25a4e3d2a5fff63a4b7625c97bc9fd98c4ed359b22c0003c73eddc1c82",
         intel:        "1a2f3d2d4dd46f9717cccc3d58f375324fda29953bc86bfa1d8b6766ac535eb6",
         x86_64_linux: "18e975933eb3cc422e6cd0bcde169f4948490d37ef44892905d74e1c02d19eec"

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
  end

  url "https://github.com/neovide/neovide/releases/download/#{version}/#{os}"
  name "Neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"
end
