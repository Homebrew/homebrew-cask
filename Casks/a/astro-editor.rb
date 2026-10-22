cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.19"
  sha256 arm:          "3650d535fbabf6a0490d8ff7cd059a13ea6ef962a033cf1c9ed83c8e69999c85",
         intel:        "3650d535fbabf6a0490d8ff7cd059a13ea6ef962a033cf1c9ed83c8e69999c85",
         x86_64_linux: "c770305273338f1a257883570ba1cfbc7b92c9c7bc06367d506ba0ead2962439"

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
