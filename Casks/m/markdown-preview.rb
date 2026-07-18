cask "markdown-preview" do
  version "0.0.37"
  sha256 "4abefdfc5fead9ce47f1d4dcbc9c30cbb773db7891ad6abb29831be3bfe9c0d4"

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

  legacy_cli = HOMEBREW_PREFIX/"bin/md-preview"
  legacy_aliases = [HOMEBREW_PREFIX/"bin/mdp", HOMEBREW_PREFIX/"bin/markdown-preview"]

  app "Markdown Preview.app"
  binary "#{appdir}/Markdown Preview.app/Contents/Resources/bin/markdown-preview", target: "mdp"
  binary "#{appdir}/Markdown Preview.app/Contents/Resources/bin/markdown-preview", target: "md-preview"
  binary "#{appdir}/Markdown Preview.app/Contents/Resources/bin/markdown-preview", target: "markdown-preview"

  preflight do
    managed_legacy_cli = legacy_cli.file? && !legacy_cli.symlink? &&
                         legacy_cli.read.include?("# Managed by Markdown Preview CLI")

    if managed_legacy_cli
      legacy_aliases.each do |path|
        Utils.gain_permissions_remove(path) if path.symlink? && path.readlink.to_s == "md-preview"
      end
      Utils.gain_permissions_remove(legacy_cli)
    end
  end

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
