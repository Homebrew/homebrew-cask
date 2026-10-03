cask "stirling-pdf" do
  arch intel: "x86_64"
  os macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "3.0.2"
  sha256 arm:          "d5d99d2fd0a3b8917183cb90d73e5e86820f52a6f864b113c1f2c8b5579c48a6",
         intel:        "d5d99d2fd0a3b8917183cb90d73e5e86820f52a6f864b113c1f2c8b5579c48a6",
         x86_64_linux: "091b9b4f2510442444a80fb3aabcdff00c6727cc884aae6bdd22d2753b4a5d60"

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
