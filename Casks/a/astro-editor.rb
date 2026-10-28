cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.20"
  sha256 arm:          "db203c94f3d9027dca5df39f2da483a60a1dbc37884c00d35ff81463cdcc679b",
         intel:        "db203c94f3d9027dca5df39f2da483a60a1dbc37884c00d35ff81463cdcc679b",
         x86_64_linux: "df9484b384914ecee9c459161c57d544cd4b692ae74c7b84d51b0d7c72096322"

  on_macos do
    app "Astro Editor.app"

    zap trash: [
      "~/Library/Application Support/is.danny.astroeditor",
      "~/Library/Caches/is.danny.astroeditor",
      "~/Library/Logs/is.danny.astroeditor",
      "~/Library/WebKit/is.danny.astroeditor",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Astro.Editor_#{version}_amd64.AppImage", target: "AstroEditor.AppImage"
  end

  url "https://github.com/dannysmith/astro-editor/releases/download/v#{version}/Astro.Editor_#{version}_#{os}.#{url_end}"
  name "Astro Editor"
  desc "Markdown editor for Astro content collections"
  homepage "https://astroeditor.danny.is/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
