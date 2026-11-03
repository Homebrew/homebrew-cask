cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.0"
  sha256 arm:          "2c7be0e8300e3bad93ccd390eae16ec342bcd935b12dc282fda3f0589bc7ce72",
         intel:        "2c7be0e8300e3bad93ccd390eae16ec342bcd935b12dc282fda3f0589bc7ce72",
         arm64_linux:  "35dea042a84a0818de2e7611cf24b937d96b64604c0cd7688c0e1841ab34b338",
         x86_64_linux: "3fd477e32f20680cf0c2d986425f783a171788869be90be556e5878b5b2318bf"

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
