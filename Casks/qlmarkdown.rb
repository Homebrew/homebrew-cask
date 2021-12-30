cask "qlmarkdown" do
  version "1.0.9"
  sha256 "a3c507f9da728d53f816b44a1c5987c3e2ee63b974b6d831ef2b44c0fbb3d74c"

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
