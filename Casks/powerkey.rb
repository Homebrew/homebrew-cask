cask :v1 => 'powerkey' do
  version '1.2'
  sha256 '47bfb13458883218cab6106bd948b8516c3a42a733180b49c410f26d4d465ca1'

  url "https://github.com/pkamb/PowerKey/releases/download/v#{version}/PowerKey#{version}.zip"
  homepage 'http://pkamb.github.io/PowerKey/'
  license :oss

  app 'PowerKey.app'
end
