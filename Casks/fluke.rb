cask :v1 => 'fluke' do
  version '0.2.5b'
  sha256 '3a68f42674aeb3a1089df5581bae5bbf8f28525d2d6588a03e257fc3b688f18a'

  url "https://flukeformac.googlecode.com/files/Fluke_#{version}.zip"
  homepage 'https://code.google.com/p/flukeformac/'
  license :oss

  pkg 'Fluke_0.2.5.pkg'

  uninstall :script => { :executable => 'Uninstall Fluke.tool' },
            :pkgutil => 'com.kichenko.fluke.*'
end
