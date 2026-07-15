cask "markdown-preview" do
  version "0.0.35"
  sha256 "e64d4cb4cf23859e4a5916705a258991d1b59f1b61b531de0975d7cb09d61995"

  url "https://github.com/pluk-inc/markdown-preview/releases/download/v#{version}/Markdown-Preview.dmg",
      verified: "github.com/pluk-inc/markdown-preview/"
  name "Markdown Preview"
  desc "Markdown previewer with bundled Quick Look extension"
  homepage "https://markdownpreview.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Markdown Preview.app"

  zap trash: [
    "~/Library/Application Scripts/doc.md-preview",
    "~/Library/Application Scripts/doc.md-preview.quick-look",
    "~/Library/Caches/doc.md-preview",
    "~/Library/Containers/doc.md-preview",
    "~/Library/Containers/doc.md-preview.quick-look",
    "~/Library/HTTPStorages/doc.md-preview",
    "~/Library/Preferences/doc.md-preview.plist",
  ]
end
