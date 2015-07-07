cask :v1 => 'screencat' do
  version '2.0.0'
  sha256 'd0587d3c7c926825019d296ad677c4469fa6cdf47ab434f556d74c372e5a18e6'

  url "https://github.com/maxogden/screencat/releases/download/#{version}/ScreenCat.zip"
  name 'ScreenCat'
  homepage 'https://maxogden.github.io/screencat/'
  license :oss

  app 'ScreenCat.app'
end
