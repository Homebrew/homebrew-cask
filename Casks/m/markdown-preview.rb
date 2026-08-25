cask "markdown-preview" do
  version "0.0.50"
  sha256 "5baff45c18fba965e3d38afbb89748a27db1f16715aec3e3a0cf1a8f91a4e83f"

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
  binary "#{appdir}/Markdown Preview.app/Contents/Resources/bin/markdown-preview", target: "mdp"

  zap trash: [
    "~/Library/Application Scripts/doc.md-preview",
    "~/Library/Application Scripts/doc.md-preview.quick-look",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/doc.md-preview.sfl*",
    "~/Library/Caches/doc.md-preview",
    "~/Library/Containers/doc.md-preview",
    "~/Library/Containers/doc.md-preview.quick-look",
    "~/Library/HTTPStorages/doc.md-preview",
    "~/Library/Preferences/doc.md-preview.plist",
  ]
end
