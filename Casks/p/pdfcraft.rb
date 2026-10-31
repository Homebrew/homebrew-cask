cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.16.1"
  sha256 arm:          "1357e6f1cdc1d06ab4ecc253e9c7b31b71e401897b5c781583ccaefd1941642f",
         intel:        "1357e6f1cdc1d06ab4ecc253e9c7b31b71e401897b5c781583ccaefd1941642f",
         arm64_linux:  "547b89103c6770f2ebe4a52bd2a5aa1667d0724045b400dcd8a9bf0724f1cf4d",
         x86_64_linux: "2535a68a9c2156946cbc7cd3ffe4704a3d2c840a211ce6cc2d9cea62d36dca53"

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
