cask "syntax-highlight" do
  version "1.0.b29"
  sha256 "3d5a198dd4e83192093d69bb6242e33db55e0936d19f5c38154ab59f332138da"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
