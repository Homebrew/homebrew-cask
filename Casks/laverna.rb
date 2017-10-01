cask 'laverna' do
  version '0.7.51'
  sha256 'b5008b0bb25036265b179d3ad0b097de4ee95de75d4ef87ff848dc085395ab50'

  # github.com/Laverna/laverna was verified as official when first introduced to the cask
  url "https://github.com/Laverna/laverna/releases/download/#{version}/laverna-#{version}-darwin-x64.zip"
  appcast 'https://github.com/Laverna/laverna/releases.atom',
          checkpoint: '5c41417cec4cacbba283439b4af805bbb394d9d06000be065c811550159a82ed'
  name 'Laverna'
  homepage 'https://laverna.cc/'

  app 'laverna.app'
end
