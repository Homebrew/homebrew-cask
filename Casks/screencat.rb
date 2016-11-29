cask 'screencat' do
  version '2.0.0'
  sha256 'd0587d3c7c926825019d296ad677c4469fa6cdf47ab434f556d74c372e5a18e6'

  # github.com/maxogden/screencat was verified as official when first introduced to the cask
  url "https://github.com/maxogden/screencat/releases/download/#{version}/ScreenCat.zip"
  appcast 'https://github.com/maxogden/screencat/releases.atom',
          checkpoint: 'ab6d5b16172351803d8ad9bd1d3200abade4df0c9abc60341d5a07f0d5ec3488'
  name 'ScreenCat'
  homepage 'https://maxogden.github.io/screencat/'

  app 'ScreenCat.app'
end
