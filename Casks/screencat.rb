cask :v1 => 'screencat' do
  version '2.0.0'
  sha256 'a963fa07c3831a7643a1a5aad4bbe8790eef88e4de35d681a3f7adc18e6c2814'

  url "https://github.com/maxogden/screencat/releases/download/#{version}/ScreenCat.zip"
  name 'ScreenCat'
  homepage 'http://maxogden.github.io/screencat/'
  license :oss

  app 'ScreenCat.app'
end
