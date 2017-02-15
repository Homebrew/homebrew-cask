cask 'sharelatex' do
  version :latest
  sha256 :no_check

  url 'https://github.com/jeremyvizzini/Native-ShareLaTeX/raw/master/Downloads/native-sharelatex.zip'
  name 'Native-ShareLaTeX'
  homepage 'https://github.com/jeremyvizzini/Native-ShareLaTeX/'

  app 'ShareLaTeX.app'
end
