cask "syntax-highlight" do
  version "2.0.2"
  sha256 "82234f69ba7bcecf335da8e5a06931fa40d3d1028afcc7ad0bcdbdbe29ca1ec6"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  auto_updates true
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
