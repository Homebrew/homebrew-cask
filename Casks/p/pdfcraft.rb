cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "90aec2859024f27e1095ecf8bb250a9bc0251f900ba0ab5cd194d10557c8a712",
         intel:        "90aec2859024f27e1095ecf8bb250a9bc0251f900ba0ab5cd194d10557c8a712",
         arm64_linux:  "250c427d5f50321b8453df397bc76d4ecd53cdc03813f0268b6ce8f7b431a05f",
         x86_64_linux: "9337e5702ee6459d8bcda9876c3ae3c9725af38c744096dbc070d7cfae244586"

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
