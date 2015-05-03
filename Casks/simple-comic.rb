cask :v1 => 'simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  # Mirror of the download link since vendor link is offline
  url "https://andychase.github.io/Simple-Comic/SimpleComic_#{version}.zip"
  name 'Simple Comic'
  homepage 'http://dancingtortoise.com/simplecomic/'
  license :mit

  app 'Simple Comic.app'
end
