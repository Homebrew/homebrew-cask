cask :v1 => 'feisty-dog-tag' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/feisty-dog/Tag.zip'
  homepage 'http://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
