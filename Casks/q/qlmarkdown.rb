cask "qlmarkdown" do
  version "1.0.20"
  sha256 "e3c694fc783422b9434556a90b78e7bcc3fbe0ac5de3a60c677dda982337a90e"

  url "https://github.com/sbarex/QLMarkdown/releases/download/#{version}/QLMarkdown.zip"
  name "sbarex QLMarkdown"
  desc "Quick Look generator for Markdown files"
  homepage "https://github.com/sbarex/QLMarkdown"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "QLMarkdown.app"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.QLMarkdown",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Containers/org.sbarex.QLMarkdown",
    "~/Library/Containers/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Group Containers/org.sbarex.qlmarkdown",
    "~/Library/Preferences/org.sbarex.QLMarkdown.plist",
    "~/Library/QuickLook/QLMarkdown.qlgenerator",
  ]
end
