cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.2.1"
  sha256 arm:          "c4a4dba869a5df1a383f264d7cc16cd6e18b80a3414e0aad3555f13a05ed3aeb",
         intel:        "c4a4dba869a5df1a383f264d7cc16cd6e18b80a3414e0aad3555f13a05ed3aeb",
         x86_64_linux: "d1a59b2263f633369424e96b4149e3173ab0c82a07976132d03174d9cc4af551"

  on_macos do
    depends_on macos: :monterey

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

    zap trash: "~/.local/share/is.danny.astroeditor"
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
