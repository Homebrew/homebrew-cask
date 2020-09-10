cask "syntax-highlight" do
  version "1.0.b26"
  sha256 "af4444b1604e488efbd207eb9a9e20c59be6848705d93aefb8d85803914d35f8"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
