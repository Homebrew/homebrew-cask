cask "stirling-pdf" do
  arch intel: "x86_64"
  os macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "3.0.0"
  sha256 arm:          "057fad6f16c3091ac902d93ba6a63243f1f90c3a77b82c1cb0e68da4bd0ece66",
         intel:        "057fad6f16c3091ac902d93ba6a63243f1f90c3a77b82c1cb0e68da4bd0ece66",
         x86_64_linux: "7d864966f65e19f5955bb1dbb5cd02f480ed6fa9e701bb760ac2d8bf4313e965"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "Stirling-PDF-linux-#{arch}.AppImage", target: "Stirling-PDF.AppImage"
  end

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-#{os}"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"
end
