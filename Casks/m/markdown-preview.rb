cask "markdown-preview" do
  version "0.0.75"
  sha256 "26a548b104ec49d406562530bba8d0a2029dad777c7c54019f37b54f231fec3d"

  url "https://github.com/pluk-inc/markdown-preview/releases/download/v#{version}/Markdown-Preview.dmg"
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

  uninstall quit: [
    "doc.md-preview",
    "sh.pluk.md-preview",
  ]

  zap trash: [
    "~/Library/Application Scripts/5P3TSMNV42.doc.md-preview",
    "~/Library/Application Scripts/doc.md-preview",
    "~/Library/Application Scripts/doc.md-preview.quick-look",
    "~/Library/Application Scripts/sh.pluk.md-preview",
    "~/Library/Application Scripts/sh.pluk.md-preview.quick-look",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/doc.md-preview.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.pluk.md-preview.sfl*",
    "~/Library/Caches/doc.md-preview",
    "~/Library/Caches/sh.pluk.md-preview",
    "~/Library/Containers/doc.md-preview",
    "~/Library/Containers/doc.md-preview.quick-look",
    "~/Library/Containers/sh.pluk.md-preview",
    "~/Library/Containers/sh.pluk.md-preview.quick-look",
    "~/Library/Group Containers/5P3TSMNV42.doc.md-preview",
    "~/Library/HTTPStorages/doc.md-preview",
    "~/Library/Preferences/doc.md-preview.plist",
  ]
end
