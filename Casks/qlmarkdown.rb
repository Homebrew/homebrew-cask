cask "qlmarkdown" do
  version "1.0.10"
  sha256 "bc336b4e1c69d7d88eb54e54e792305516d2775e6c32705dbc9bf7eb3f58ec25"

  url "https://github.com/sbarex/QLMarkdown/releases/download/#{version}/QLMarkdown.zip"
  name "sbarex-qlmarkdown"
  desc "QuickLook generator for Markdown files"
  homepage "https://github.com/sbarex/QLMarkdown"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "QLMarkdown.app"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.QLMarkdown",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Containers/org.sbarex.QLMarkdown",
    "~/Library/Containers/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Preferences/org.sbarex.QLMarkdown.plist",
    "~/Library/QuickLook/QLMarkdown.qlgenerator",
  ]
end
