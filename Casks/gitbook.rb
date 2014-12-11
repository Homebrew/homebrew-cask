cask :v1 => 'gitbook' do
  version :latest
  sha256 :no_check

  url 'https://www.gitbook.io/editor/download'
  homepage 'https://www.gitbook.io/'
  license :apache

  app 'GitBook.app'
end
