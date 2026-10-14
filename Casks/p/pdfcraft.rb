cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.0"
  sha256 arm:          "65f727c221d5b38bcddc94ea64db6c490b0b320ecab81088a4d32496e1feab07",
         intel:        "65f727c221d5b38bcddc94ea64db6c490b0b320ecab81088a4d32496e1feab07",
         arm64_linux:  "97dfb26265c10d0dd2dd66827f77a8ebcd421daf11106b2d672b16efb86eb0c8",
         x86_64_linux: "6b89397ec10ad505e732f18982b6ad171aab085d938ca0c3034a00d4199e38f7"

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
