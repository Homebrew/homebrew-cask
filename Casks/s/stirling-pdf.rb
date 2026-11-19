cask "stirling-pdf" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3.4.0"
  sha256 arm:          "e5f5a8e26aead0846f8f419683030f254665d014f89e76452ac247925eac96ec",
         intel:        "e5f5a8e26aead0846f8f419683030f254665d014f89e76452ac247925eac96ec",
         x86_64_linux: "bed3f1a6245c46fb7a79aa68df33abec5a93df665c5d28bafa2dd90477045d8d"

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
