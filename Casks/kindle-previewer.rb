class KindlePreviewer < Cask
  version :latest
  sha256 :no_check

  url 'https://kindlepreviewer.s3.amazonaws.com/KindlePreviewer.zip'
  homepage 'http://www.amazon.com/gp/feature.html/?docId=1000765261'

  app 'Kindle Previewer.app'
end
