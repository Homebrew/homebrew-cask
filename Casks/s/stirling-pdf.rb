cask "stirling-pdf" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3.1.0"
  sha256 arm:          "db6f24d00ca1f15991abb8fd919fc2af1fd72c88315a7ae789d86cfeabe8c2ef",
         intel:        "db6f24d00ca1f15991abb8fd919fc2af1fd72c88315a7ae789d86cfeabe8c2ef",
         x86_64_linux: "f540b024c1878e1ff5b387f1a537cd984bc76f6fcc565dc2079ed740afdce0ef"

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
