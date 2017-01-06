cask 'kindlepreviewer' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/kindlepreviewer3 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/kindlepreviewer3/KindlePreviewerInstaller.pkg'
  name 'Kindle Previewer'
  homepage 'https://www.amazon.com/gp/feature.html/?docId=1003018611'

  pkg 'KindlePreviewerInstaller.pkg'

  uninstall pkgutil: 'Amazon.Kindle.Previewer.pkg'
end
