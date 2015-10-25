cask :v1 => 'gitbook-editor' do
  version :latest
  sha256 :no_check

  url 'http://downloads.editor.gitbook.com/download/osx'
  name 'GitBook Editor'
  homepage 'https://www.gitbook.com/editor'
  license :gratis

  app 'GitBook Editor.app'
end
