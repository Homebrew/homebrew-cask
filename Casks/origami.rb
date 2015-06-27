cask :v1 => 'origami' do
  version '2.0.2'
  sha256 '0a41379bc2dd816c5fd34e7107f02d6c00a67f5b87096e8e2f122204128627cc'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          :sha256 => 'cd9fc6d5cdad06e1df1e6808bd7fdaa3999b52a765f29cc6b3dcbf6c11220540'
  name 'Origami'
  homepage 'http://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
