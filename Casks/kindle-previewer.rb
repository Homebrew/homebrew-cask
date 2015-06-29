cask :v1 => 'kindle-previewer' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://kindlepreviewer.s3.amazonaws.com/KindlePreviewer.zip'
  name 'Kindle Previewer'
  homepage 'https://www.amazon.com/gp/feature.html/?docId=1000765261'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kindle Previewer.app'
end
