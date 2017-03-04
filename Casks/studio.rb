cask 'studio' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/blstudio was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/blstudio/Stud.io.pkg'
  name 'Stud.io'
  homepage 'http://studio.bricklink.com/v2/build/studio.page'

  pkg 'Stud.io.pkg'

  uninstall pkgutil: 'com.bricklink.pkg.Studio'
end
