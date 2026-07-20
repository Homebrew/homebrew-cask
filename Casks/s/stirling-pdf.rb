cask "stirling-pdf" do
  version "2.14.2"

  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-#{url_end}",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"

  on_macos do
    sha256 "d31e0f2e8f6d06d3fd199aa47804f1e05377f9d05680377390bfdb2ac949f67c"

    app "Stirling PDF.app"

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
    sha256 "ad534e652e02536ebb1542c6f62d8a38f64a9eff7f8387525a2c8bd203c309f1"
    depends_on arch: :x86_64

    app_image "Stirling-PDF-linux-x86_64.AppImage", target: "Stirling-PDF.AppImage"
  end
end
