cask 'screencat' do
  version '2.0.0'
  sha256 'd0587d3c7c926825019d296ad677c4469fa6cdf47ab434f556d74c372e5a18e6'

  # github.com/maxogden/screencat was verified as official when first introduced to the cask
  url "https://github.com/maxogden/screencat/releases/download/#{version}/ScreenCat.zip"
  appcast 'https://github.com/maxogden/screencat/releases.atom',
          checkpoint: 'cad4deaaf999a2f37aafd2f361108821d3da0074646a81b62694ada3eca0135c'
  name 'ScreenCat'
  homepage 'https://maxogden.github.io/screencat/'
  license :oss

  app 'ScreenCat.app'
end
