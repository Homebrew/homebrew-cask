cask :v1 => 'nosleep' do
  version '1.4.0'
  sha256 '29e7f771970dce41936372687a5160700e2208357ef1ce37d81ac95c9188efe8'

  url "https://github.com/integralpro/nosleep/releases/download/v#{version}/NoSleep-#{version}.dmg"
  homepage 'https://code.google.com/p/macosx-nosleep-extension/'
  license :oss

  pkg 'NoSleep.pkg'

  uninstall :script => 'Uninstall.command',
            :pkgutil => 'com.protech.pkg.NoSleep'
end
