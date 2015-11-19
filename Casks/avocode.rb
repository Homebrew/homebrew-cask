cask :v1 => 'avocode' do
  version '2.2.1'
  sha256 '66065ec9dd7c1696e689af92a0f6a6e0acf0f80f05b6b6f0847dc98105f7b785'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'
end
