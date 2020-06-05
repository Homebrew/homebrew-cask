cask 'syntax-highlight' do
  version '1.0.b24'
  sha256 'e4075d35b9423b64ded62225310df1c0c3efe008c8d8cb2facacb8ee0735935a'

  url "https://github.com/sbarex/SourceCodeSyntaxHighlight/releases/download/#{version}/Syntax.Highlight.zip"
  appcast 'https://github.com/sbarex/SourceCodeSyntaxHighlight/releases.atom'
  name 'Syntax Highlight'
  homepage 'https://github.com/sbarex/SourceCodeSyntaxHighlight'

  depends_on macos: '>= :catalina'

  app 'Syntax Highlight.app'
end
