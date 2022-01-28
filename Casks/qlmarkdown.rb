cask "qlmarkdown" do
  version "1.0.11"
  sha256 "139f013cd3673bf63c9a5e03b6a0f06221c893f0b0225830dba24361263e31b3"

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
