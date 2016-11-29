cask 'kindlepreviewer' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/kindlepreviewer was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/kindlepreviewer/KindlePreviewer.pkg'
  name 'Kindle Previewer'
  homepage 'https://www.amazon.com/gp/feature.html/?docId=1000765261'

  pkg 'KindlePreviewer.pkg'

  uninstall pkgutil: 'Amazon.Kindle.Previewer.pkg'
end
