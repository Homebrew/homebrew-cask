cask "excalidraw-desktop" do
  version "1.0.11"
  sha256 "7f59e151c360fe1114b7a412d7d1082a85471eb5592f4e116f93bc4e898e8a6c"

  url "https://github.com/pgkt04/excalidraw-desktop/releases/download/v#{version}/Excalidraw-#{version}.AppImage"
  name "Excalidraw Desktop"
  desc "Unofficial desktop client for Excalidraw"
  homepage "https://github.com/pgkt04/excalidraw-desktop"

  depends_on arch: :x86_64
  depends_on :linux # the macOS app is not notarised

  app_image "Excalidraw-#{version}.AppImage", target: "Excalidraw.AppImage"

  zap trash: "~/.config/Excalidraw"
end
