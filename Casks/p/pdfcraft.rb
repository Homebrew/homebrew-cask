cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.0"
  sha256 arm:          "8774df32a4ddc356029b133d7d860ed4723c968b8b018e2062b39da0fb05e752",
         intel:        "8774df32a4ddc356029b133d7d860ed4723c968b8b018e2062b39da0fb05e752",
         arm64_linux:  "988cffd850088b1b2b792bb8b52ca4adc453c3eb84d8ce7d2ffe13c12ac23813",
         x86_64_linux: "d85810e236f095aa900af20e0276793b28435726cabdd4e21f34ad1049d3cc32"

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
