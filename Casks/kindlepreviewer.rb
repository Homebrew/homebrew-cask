cask 'kindlepreviewer' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://kindlepreviewer.s3.amazonaws.com/KindlePreviewer.zip'
  name 'Kindle Previewer'
  homepage 'https://www.amazon.com/gp/feature.html/?docId=1000765261'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'KindlePreviewer.pkg'

  uninstall pkgutil: 'Amazon.Kindle.Previewer.pkg'
end
