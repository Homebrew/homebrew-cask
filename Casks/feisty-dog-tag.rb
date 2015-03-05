cask :v1 => 'feisty-dog-tag' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/feisty-dog/Tag.zip'
  name 'Tag'
  homepage 'http://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
