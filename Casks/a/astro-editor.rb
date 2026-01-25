cask "astro-editor" do
  version "1.0.7"
  sha256 "d0ccbe1429dc960f60575f3837f0020b29cb6c3e5641141dba86738c04b905f8"

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
