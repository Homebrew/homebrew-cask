cask "syntax-highlight" do
  version "2.1.25"
  sha256 "bcb782afc31b7df1859c3414b52253baf50c07a26210b2c55d785a52914bacdd"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  livecheck do
    url "https://sbarex.github.io/SourceCodeSyntaxHighlight/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Syntax Highlight.app"
  binary "#{appdir}/Syntax Highlight.app/Contents/Resources/syntax_highlight_cli"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight",
    "~/Library/Application Scripts/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
    "~/Library/Application Support/Syntax Highlight",
    "~/Library/Caches/com.apple.helpd/Generated/org.sbarex.SourceCodeSyntaxHighlight.help*",
    "~/Library/Containers/org.sbarex.SourceCodeSyntaxHighlight",
    "~/Library/Containers/org.sbarex.SourceCodeSyntaxHighlight.QuicklookExtension",
    "~/Library/Preferences/org.sbarex.SourceCodeSyntaxHighlight.plist",
  ]
end
