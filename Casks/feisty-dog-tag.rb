cask 'feisty-dog-tag' do
  version '1.0.4,010'
  sha256 '1bfc83427aa474d9df3c5413ee5645a0e5b134ceef642bf99a717af1798e72df'

  # amazonaws.com is the official download host per the appcast feed
  url "http://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Tag-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Tag',
          :sha256 => '775f68c198856332ee89dfbe2f115d3a9cc72cb44d1bf701acfdc43eca0c6a02'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
