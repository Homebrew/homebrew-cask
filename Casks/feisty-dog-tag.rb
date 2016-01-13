cask 'feisty-dog-tag' do
  version '1.0.4,010'
  sha256 '1bfc83427aa474d9df3c5413ee5645a0e5b134ceef642bf99a717af1798e72df'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Tag-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Tag',
          :sha256 => '21c61115edee993df88b7c3494e7813b14c122eadf4b93a08592e77ce6318b84'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
