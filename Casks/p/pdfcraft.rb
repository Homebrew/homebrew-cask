cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.2"
  sha256 arm:          "79d62c11f4c28d5447cee3a5163c1dbf04df240a08640237f3850bb726dd28a7",
         intel:        "79d62c11f4c28d5447cee3a5163c1dbf04df240a08640237f3850bb726dd28a7",
         arm64_linux:  "fd4846be94442b86a8e63fb97c99b136b34928fbf2acb6c5ecf9ab307982cbf2",
         x86_64_linux: "bedb1f8173e7eb9fa1d5800b65b41ed3b5a57ad93e5661c6a921a2a450242291"

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
