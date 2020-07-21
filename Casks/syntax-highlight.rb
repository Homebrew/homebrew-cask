cask 'syntax-highlight' do
  version '1.0.b25'
  sha256 'a4a65e1c1ca7ac775296c7ae264ab2066cc315e68b3332f2fa5a1e3931439ab1'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
