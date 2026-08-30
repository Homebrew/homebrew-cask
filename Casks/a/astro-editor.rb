cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.17"

  on_macos do
    sha256 "f7ed25372e8c4279ba950ed46445bc709ca52d63c84350882888a64ae1e5715b"

    app "Astro Editor.app"

    zap trash: [
      "~/Library/Application Support/is.danny.astroeditor",
      "~/Library/Caches/is.danny.astroeditor",
      "~/Library/Logs/is.danny.astroeditor",
      "~/Library/WebKit/is.danny.astroeditor",
    ]
  end
  on_linux do
    sha256 "0622030b83a5c33724b9356dfc3d571e4b2d6aa84a977b754cc2f9dff38ec5e6"

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
