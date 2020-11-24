cask "syntax-highlight" do
  version "1.0.b28"
  sha256 "a380f5b86296a3ce17b5437eaaebc97aae2c899c6d8d895a1bae2b952fa35bf4"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
