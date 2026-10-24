cask "stirling-pdf" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3.2.2"
  sha256 arm:          "906785fb858ec5e34a9c0c76162442876d7d3db6f9fe75037a503fbce380af77",
         intel:        "906785fb858ec5e34a9c0c76162442876d7d3db6f9fe75037a503fbce380af77",
         x86_64_linux: "6895f4e311119938c1651b04ea500a0d79b65ab4a16c2050e39a4f31a328f51c"

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
