cask :v1_1 => 'gitbook' do
  version :latest
  sha256 :no_check

  url "http://downloads.editor.gitbook.com/download/osx"
  name 'GitBook'
  homepage 'https://www.gitbook.com/editor'
  license :unknown

  app 'GitBook Editor.app'
end
