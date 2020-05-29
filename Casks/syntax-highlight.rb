cask 'syntax-highlight' do
  version '1.0.b23'
  sha256 'cdcbd1812ce0aedd772c8f314eb758a0ffe76a958a563efd142e4e2131fd192b'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
