cask "syntax-highlight" do
  version "2.1.10"
  sha256 "e3da7d6ce768438be173fa90af3f8d09f820bad5b68cc9e224e4e1ed2038efa0"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight",
    "~/Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
    "~/Library/Application Support/Syntax Highlight",
    "~/Library/Caches/com.apple.helpd/Generated/org.sbarex.SourceCodeSyntaxHighlight.help*#{version}",
    "~/Library/Containers/org.sbarex.SourceCodeSyntaxHighlight",
    "~/Library/Containers/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
    "~/Library/Preferences/org.sbarex.SourceCodeSyntaxHighlight.plist",
  ]
end
