cask "stirling-pdf" do
  arch intel: "x86_64"
  os macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "3.0.1"
  sha256 arm:          "4e535f35c16d59e4ef7e25a58e11e32f6bbdd39d3141ba234cfc4c7431e2ef2d",
         intel:        "4e535f35c16d59e4ef7e25a58e11e32f6bbdd39d3141ba234cfc4c7431e2ef2d",
         x86_64_linux: "e8be1c4a437eac5a23c8a36011cbb49619ea0a4a339c688fd09099b5fb78b4c8"

  on_macos do
    app "Stirling PDF.app"

    uninstall quit: "stirling.pdf.dev"

    zap trash: [
      "~/Library/Application Support/Stirling-PDF",
      "~/Library/Application Support/stirling.pdf.dev",
      "~/Library/Caches/stirling.pdf.dev",
      "~/Library/Logs/Stirling-PDF",
      "~/Library/Logs/stirling.pdf.dev",
      "~/Library/WebKit/stirling.pdf.dev",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Stirling-PDF-linux-#{arch}.AppImage", target: "Stirling-PDF.AppImage"
  end

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-#{os}"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"
end
