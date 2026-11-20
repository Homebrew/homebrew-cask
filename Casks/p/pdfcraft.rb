cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.21.1"
  sha256 arm:          "1adc9bf3d319e707e9247004db05a32a059634e3710fe79bc14f92f689ca4d4a",
         intel:        "1adc9bf3d319e707e9247004db05a32a059634e3710fe79bc14f92f689ca4d4a",
         arm64_linux:  "e34a136f1f9a3feabdb5a4ea8f8fba1bb3e5ac54f3962490e7e041fdcf58df5f",
         x86_64_linux: "730276cda9addb3d48f26c602686d18fc5bc0ebe360a60a2f522d70cfd428d21"

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
