class Gitbook < Cask
  version :latest
  sha256 :no_check

  url 'https://www.gitbook.io/editor/download'
  homepage 'https://www.gitbook.io/'
  license :unknown

  app 'GitBook.app'
end
