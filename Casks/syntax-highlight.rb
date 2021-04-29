cask "syntax-highlight" do
  version "2.0.0"
  sha256 "e52c94f7e387a1154b4d47f3b6ad41f8d7d694de6f06c1430cd0c2649baff5cf"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"

  zap trash: [
     "~Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight",
     "~Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
     "~Library/Application Support/Syntax Highlight",
     "~Library/Caches/com.apple.helpd/Generated/org.sbarex.SourceCodeSyntaxHighlight.help*1.0",
     "~Library/Containers/org.sbarex.SourceCodeSyntaxHighlight",
     "~Library/Containers/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
     "~Library/Preferences/org.sbarex.SourceCodeSyntaxHighlight.plist",
]
end