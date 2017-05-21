cask :v1 => 'nanobox-bundle' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/tools.nanobox.io/installers/mac/nanobox-bundle.dmg'
  name 'nanobox-bundle'
  homepage 'http://www.nanobox.io/'
  license :oss

  pkg 'nanobox.pkg'

  binary '/opt/nanobox/bin/nanobox'

  uninstall :pkgutil => 'com.nanobox.nanobox'
end
