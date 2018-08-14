cask 'feisty-dog-tag' do
  version '1.0.4,010'
  sha256 '1bfc83427aa474d9df3c5413ee5645a0e5b134ceef642bf99a717af1798e72df'

  # amazonaws.com/feisty-dog was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/feisty-dog/versions/binaries/000/000/#{version.after_comma}/Tag-#{version.before_comma}.zip"
  appcast 'https://www.feisty-dog.com/panel/updates/Tag'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'

  app 'Tag.app'
end
