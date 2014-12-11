cask :v1 => 'kindle-previewer' do
  version :latest
  sha256 :no_check

  url 'https://kindlepreviewer.s3.amazonaws.com/KindlePreviewer.zip'
  homepage 'http://www.amazon.com/gp/feature.html/?docId=1000765261'
  license :unknown    # todo: improve this machine-generated value

  app 'Kindle Previewer.app'
end
