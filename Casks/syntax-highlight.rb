cask 'syntax-highlight' do
  version '1.0.b19'
  sha256 'a17536242ffa630337441766df7aca3fa953c0be3a303fb212f8fd266e772c74'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/SyntaxHighlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
