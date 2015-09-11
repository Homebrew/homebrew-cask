cask :v1 => 'feisty-dog-tag' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/feisty-dog/Tag.zip'
  name 'Tag'
  appcast 'https://www.feisty-dog.com/panel/updates/Tag',
          :sha256 => '9e3d6f54c3bca3928a340c96fece9866131d77b8723dc86cc898fab3264d5807'
  homepage 'http://www.feisty-dog.com/tag/'
  license :commercial

  app 'Tag.app'
end
