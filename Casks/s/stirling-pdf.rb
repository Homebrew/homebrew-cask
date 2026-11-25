cask "stirling-pdf" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3.5.0"
  sha256 arm:          "6bed1eb2c3282e83ed790f1d49d977b7d3a6f79d8df53e80cf1dedebcdf48ae1",
         intel:        "6bed1eb2c3282e83ed790f1d49d977b7d3a6f79d8df53e80cf1dedebcdf48ae1",
         x86_64_linux: "c51ec24e64d0cf0acb3b6eff6bf40a2c4363bfb04151693a211a1e46868e7d45"

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
