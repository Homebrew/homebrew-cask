cask "astro-editor" do
  version "0.1.33"
  sha256 "160e3b438641fa4e89662746627ea2b7d9aa5bed6efab7efe5e2f23f477478fb"

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
