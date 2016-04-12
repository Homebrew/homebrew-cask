cask 'debookee' do
  version '5.0.4'
  sha256 '6acd9c2b42dc878689cc85a0154272940390fc5312c84c7cf49d658555c5c71e'

  url 'https://www.iwaxx.com/debookee/debookee.zip'
  appcast 'https://www.iwaxx.com/debookee/appcast.php',
          checkpoint: '768fbfd86c7086357522a2d0dc420a2f31be82f271f637515c1fc5e2232160ab'
  name 'Debookee'
  homepage 'https://www.iwaxx.com/debookee/'
  license :commercial

  app "Debookee #{version}/Debookee.app"
end
