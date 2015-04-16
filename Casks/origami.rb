cask :v1 => 'origami' do
  version '2.0.2'
  sha256 '0a41379bc2dd816c5fd34e7107f02d6c00a67f5b87096e8e2f122204128627cc'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://origami.facebook.com/update/updates.xml.rss'
  name 'Origami'
  homepage 'http://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
