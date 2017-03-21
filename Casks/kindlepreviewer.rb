cask 'kindlepreviewer' do
  version '3.8.0'
  sha256 '640cde7739e7aa95214aa8dc2c9f127a2c959f95f40142d6e9639257bb7ef85f'

  # s3.amazonaws.com/kindlepreviewer3 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/kindlepreviewer3/KindlePreviewerInstaller.pkg'
  name 'Kindle Previewer'
  homepage 'https://www.amazon.com/gp/feature.html/?docId=1003018611'

  pkg 'KindlePreviewerInstaller.pkg'

  uninstall pkgutil: 'Amazon.Kindle.Previewer.pkg'
end
