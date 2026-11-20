cask "astro-editor" do
  os macos: "universal", linux: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.0"
  sha256 arm:          "4b0467e74fe0b15db7761e3a462c8419468072833e0da34664ceefcd92f720c6",
         intel:        "4b0467e74fe0b15db7761e3a462c8419468072833e0da34664ceefcd92f720c6",
         x86_64_linux: "18cb324b9fd9d71e6e6ce9d34603c1ec339c6d569584bc5d19dc3766daaac2c9"

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
