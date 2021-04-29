cask "syntax-highlight" do
  version "2.0.1"
  sha256 "9a47cf1c5faa5d56e9142ea8b158de0d3d4db4b910e052e86940e475875b2b9c"

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  name "Syntax Highlight"
  desc "Quicklook extension for source files"
  homepage "https://github.com/sbarex/SourceCodeSyntaxHighlight"

  depends_on macos: ">= :catalina"

  app "Syntax Highlight.app"
end
