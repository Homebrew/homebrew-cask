cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.15.0"
  sha256 arm:          "c124fc2ed512765943fb2e8e764bc14c079dc5b7d7a5439ccdb3401df78fd472",
         intel:        "c124fc2ed512765943fb2e8e764bc14c079dc5b7d7a5439ccdb3401df78fd472",
         arm64_linux:  "c43010378f9180887644eaa5ad8cc9ff9168714e0a108f49e62a2c1b7be012a0",
         x86_64_linux: "7d7771a62a9c81e35b1de286ad38110c85a59a040c12b961f024ee972338d2fe"

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
