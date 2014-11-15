cask :v1 => 'nosleep' do
  version '1.3.3'
  sha256 '5fe90c54e975d3f1de9f7fdb66def0188c571eab083b18a7e94abaa5f0d41ba9'

  url "https://macosx-nosleep-extension.googlecode.com/files/NoSleep-#{version}.dmg"
  homepage 'https://code.google.com/p/macosx-nosleep-extension/'
  license :oss

  pkg 'NoSleep.mpkg'
  uninstall :script => 'Uninstall.command',
            :pkgutil => 'com.protech.pkg.NoSleep'
end
