cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Neovide-#{arch}-apple-darwin.dmg", linux: "neovide.AppImage"

  version "0.17.0"
  sha256 arm:          "ce0f05b6b68dd1c637edbd62e809d1fd3f286ebd5395069836da3beff192a934",
         intel:        "7795ff50fc55d4ddf5b1571960c2a5b274f345bc77806ec841ba5589c2e32ee4",
         x86_64_linux: "bd815480bde9339d871e5c51d1376f7ee38887ba222850460e32b0f19ce845ed"

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
