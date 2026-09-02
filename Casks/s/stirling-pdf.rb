cask "stirling-pdf" do
  arch intel: "x86_64"
  os macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "2.14.3"

  on_macos do
    sha256 "25073f75260c75854af3c81b457958471142b204f3f37c1142b41c75c5704a55"

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
    sha256 "9beca308e9c507a7eec804b672e3bf220728caf49a58e2cd896154a69ac82d07"

    depends_on arch: :x86_64

    app_image "Stirling-PDF-linux-#{arch}.AppImage", target: "Stirling-PDF.AppImage"
  end

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-#{os}"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"
end
