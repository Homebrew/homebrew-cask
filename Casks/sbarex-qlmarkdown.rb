cask "sbarex-qlmarkdown" do
  version "1.0.2"
  sha256 "22a514d3bf3d54b4646887e096506a958a6f1c7d40e653b21f7e59186f222ae3"

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
  ]
end
