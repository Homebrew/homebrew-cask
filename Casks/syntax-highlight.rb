cask 'syntax-highlight' do
  version '1.0.b22'
  sha256 'e12313211946ecf15c74b23b121111d9307374338448d9402cfd3da475957032'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
