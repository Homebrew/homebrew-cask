cask "syntax-highlight" do
  version "2.1.30"
  sha256 "d4b135c9dd8253c1f9f5bb86236c4aa1e996c72c2203ab83fea8fb3a7579156f"

  url "https://github.com/sbarex/QLSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/QLSyntaxHighlight"

  # The Sparkle feed contains `pubDate` values that are in Italian (e.g.
  # mar, 31 dic 2024 18:21:00 +0100), so the `Sparkle` strategy doesn't
  # accurately sort the items by date. We have to work with all the feed items
  # in the `strategy` block, as a way of avoiding the sorting issues.
  livecheck do
    url "https://sbarex.github.io/QLSyntaxHighlight/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
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
