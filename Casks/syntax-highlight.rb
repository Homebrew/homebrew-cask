cask "syntax-highlight" do
  version "2.0.8"
  sha256 "f1b446d6709e489942188b07b1a5b65b7cfbcf9b2adb79ef06eade7bd8a64f46"

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
