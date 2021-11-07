cask "syntax-highlight" do
  version "2.0.12"
  sha256 "6af6c99e011b57b37f8314219758c1755c6db64b4bfa53a173802610f8b241c8"

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
