cask "syntax-highlight" do
  version "1.0.b30"
  sha256 "66a23584ba4a474119e595a38f1ea78b43bbe0c4a17a693dfacf25bfc924dfe3"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
