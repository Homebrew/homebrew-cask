cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.13.0"
  sha256 arm:          "c7ad794feb3d8b513cdc402d4ead73023b408c423d0818f6492d9cf11f1c0733",
         intel:        "c7ad794feb3d8b513cdc402d4ead73023b408c423d0818f6492d9cf11f1c0733",
         arm64_linux:  "d60e10f1b9d53ecfbc7a7cdc5c58cabc068cb5c6dad8a8e899c3a31c13f0930e",
         x86_64_linux: "3fc64ed651db262b994fcd9cc3d5d7bb2e4d4799a4b4a1b38792ddb5fe106c60"

  on_macos do
    app "PdfCraft.app"

    zap trash: "~/Library/Application Support/PdfCraft"
  end
  on_linux do
    app_image "pdfcraft-#{version}-linux-#{arch}.AppImage", target: "PdfCraft.AppImage"

    zap trash: "~/.local/share/pdfcraft"
  end

  url "https://github.com/storytold/pdfcraft/releases/download/v#{version}/pdfcraft-#{version}-#{url_end}"
  name "PdfCraft"
  desc "PDF editor"
  homepage "https://getartcraft.com/apps/pdfcraft"
end
