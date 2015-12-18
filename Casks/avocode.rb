<<<<<<< b4f813a5f0168da3738a60991d8bd19225eb9825
cask 'avocode' do
  version '2.2.1'
  sha256 '66065ec9dd7c1696e689af92a0f6a6e0acf0f80f05b6b6f0847dc98105f7b785'
=======
cask :v1 => 'avocode' do
  version '2.4.3'
  sha256 '6f53e78a5fa60a80e103168fce8e3aca22013d20369f2d42b8155aee560d1b0b'
>>>>>>> Update Avocode → 2.4.3

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'
end
