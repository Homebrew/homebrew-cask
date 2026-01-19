cask "glance" do
  version "0.1.0"
  sha256 "a9e302d427d5fc846edf76d89a361d2f8c1502707ec4294b775fdf6b4b1af582"

  url "https://github.com/TristanLaR/glance/releases/download/v#{version}/glance-macos.tar.gz"
  name "Glance"
  desc "Minimal markdown viewer with live preview"
  homepage "https://github.com/TristanLaR/glance"

  app "glance.app"
  binary "glance.app/Contents/MacOS/glance"

  zap trash: [
    "~/Library/Application Support/com.glance.app",
    "~/Library/Caches/com.glance.app",
    "~/Library/Preferences/com.glance.app.plist",
  ]
end
