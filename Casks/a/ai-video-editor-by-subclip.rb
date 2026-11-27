cask "ai-video-editor-by-subclip" do
  version "1.0.51"
  sha256 arm:          "31e3c923f8f4968008a02e8dfabdb9572b31dcee938842f484117974678eb8c9",
         x86_64_linux: "18252ccd30d211f6c9896a441f0b403c50b8e07d87db066ffb32296ae446f305"

  on_macos do
    url "https://subclipweb.subclip.app/desktop/ai-video-editor/releases/#{version}/AI-Video-Editor-by-Subclip-#{version}-arm64.dmg"

    depends_on arch: :arm64
    depends_on macos: :ventura

    app "AI Video Editor by Subclip.app"
    binary "#{appdir}/AI Video Editor by Subclip.app/Contents/MacOS/AI Video Editor by Subclip", target: "subclip"

    zap trash: [
      "~/Library/Application Support/ai-video-editor",
      "~/Library/Caches/app.subclip.AI-Video-Editor",
      "~/Library/Caches/app.subclip.AI-Video-Editor.ShipIt",
      "~/Library/HTTPStorages/app.subclip.AI-Video-Editor",
      "~/Library/Preferences/app.subclip.AI-Video-Editor.plist",
    ]
  end
  on_linux do
    url "https://subclipweb.subclip.app/desktop/ai-video-editor/releases/#{version}/AI%20Video%20Editor%20by%20Subclip-#{version}-x86_64.AppImage"

    depends_on arch: :x86_64

    app_image "AI Video Editor by Subclip-#{version}-x86_64.AppImage", target: "AI Video Editor by Subclip.AppImage"

    zap trash: [
      "~/.cache/ai-video-editor-updater",
      "~/.config/ai-video-editor",
      "~/.local/share/applications/ai-video-editor-by-subclip.desktop",
    ]
  end

  name "AI Video Editor by Subclip"
  desc "AI video editor with a local MCP server for AI agents"
  homepage "https://www.subclip.app/"

  livecheck do
    url "https://subclipweb.subclip.app/desktop/ai-video-editor/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
