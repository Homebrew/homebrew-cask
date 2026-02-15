cask "astro-editor" do
  version "1.0.8"
  sha256 "93c5615bfc40b853c62ec423ff30be0403b7e4178454e92a6046698d79c03d82"

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
