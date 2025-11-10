cask "astro-editor" do
  version "0.1.35"
  sha256 "66c3bb24c98a125fb21794a56b0db5d0b9a3edde2e3e69388ac7b22ab2f841a8"

  url "https://github.com/dannysmith/astro-editor/releases/download/v#{version}/Astro.Editor_#{version}_universal.dmg",
      verified: "github.com/dannysmith/astro-editor/"
  name "Astro Editor"
  desc "Markdown editor for Astro content collections"
  homepage "https://astroeditor.danny.is/"

  app "Astro Editor.app"

  zap trash: [
    "~/Library/Application Support/is.danny.astroeditor",
    "~/Library/Caches/is.danny.astroeditor",
    "~/Library/Logs/is.danny.astroeditor",
    "~/Library/WebKit/is.danny.astroeditor",
  ]
end
