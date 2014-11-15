cask :v1 => 'simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url "http://dancingtortoisedownload.s3.amazonaws.com/SimpleComic_#{version}.zip"
  homepage 'http://dancingtortoise.com/simplecomic/'
  license :unknown

  app 'Simple Comic.app'
end
