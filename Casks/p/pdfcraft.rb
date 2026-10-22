cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.12.0"
  sha256 arm:          "c9133e1f535f0b4ea961881eaf604fc0ec84e4715d83c4d303ef5fdf08be997c",
         intel:        "c9133e1f535f0b4ea961881eaf604fc0ec84e4715d83c4d303ef5fdf08be997c",
         arm64_linux:  "bcefe031db7f52b051e8126aeabcc8f6ba6954edd9f745766ecbd61fa493cb81",
         x86_64_linux: "de6e9a6c39ee6b0c74e640656afd0243f4d78669639e14655f54c65a39e68f8e"

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
