cask "syntax-highlight" do
  version "1.0.b31"
  sha256 "785243d13ed951b7903cf5f72f82ceebb5acd0106d52bb84d31cc6c3e3ba44a0"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
