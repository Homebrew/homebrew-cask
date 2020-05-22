cask 'syntax-highlight' do
  version '1.0.b20'
  sha256 'cb3b169e1824eb6cdc84e9c1511562d1ceff9c3c6c653d6f9ccdf84ccc29a534'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
