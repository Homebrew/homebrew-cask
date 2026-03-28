cask "astro-editor" do
  version "1.0.11"
  sha256 "2bf3466d98ecf722cf204076ba9310409667e44b8191a178bd00d0faf07072f6"

  url "https://github.com/dannysmith/astro-editor/releases/download/v#{version}/Astro.Editor_#{version}_universal.dmg",
      verified: "github.com/dannysmith/astro-editor/"
  name "Astro Editor"
  desc "Markdown editor for Astro content collections"
  homepage "https://astroeditor.danny.is/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Astro Editor.app"

  zap trash: [
    "~/Library/Application Support/is.danny.astroeditor",
    "~/Library/Caches/is.danny.astroeditor",
    "~/Library/Logs/is.danny.astroeditor",
    "~/Library/WebKit/is.danny.astroeditor",
  ]
end
