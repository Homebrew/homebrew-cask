cask "stirling-pdf" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3.3.0"
  sha256 arm:          "8d0c89b59ccc54765f0b6b8a2ae288f8d56abc5ee6ca0ae8a0cf3e02578bd90a",
         intel:        "8d0c89b59ccc54765f0b6b8a2ae288f8d56abc5ee6ca0ae8a0cf3e02578bd90a",
         x86_64_linux: "67e071fbe713e9bc2028bcf9ff8e0ac2b6e841d7223fec7b7013f689bd44331e"

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

    app_image "Stirling-PDF-linux-x86_64.AppImage", target: "Stirling PDF.AppImage"

    zap trash: [
      "~/.cache/stirling.pdf.dev",
      "~/.config/Stirling-PDF",
      "~/.config/stirling.pdf.dev",
      "~/.local/share/applications/Stirling-PDF-handler.desktop",
      "~/.local/share/stirling.pdf.dev",
    ]
  end

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-#{os}"
  name "Stirling PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"

  auto_updates true
end
