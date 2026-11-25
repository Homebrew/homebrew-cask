cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.2.0"
  sha256 arm:          "d69dcdb270ab81a61244445939c1e5af33786c0fb604fef125dc926ab35d7fce",
         intel:        "d69dcdb270ab81a61244445939c1e5af33786c0fb604fef125dc926ab35d7fce",
         x86_64_linux: "b1d230380d2747523c9a90e4f5e47753b78ff4f5037c59638769ca9ba1d76a31"

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
