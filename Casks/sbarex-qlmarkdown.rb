cask "sbarex-qlmarkdown" do
  version "1.0b25"
  sha256 "4653980977900d38b8de46179ced9113f9ec06629f6358f272204b83d75dd8d3"

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
