cask :v1 => 'node-webkit' do
  version '0.11.6'
  sha256 '7e5ace3470f9f8a68232e2e12542408a2f0f1bc33edb7daddb452230cc223daa'

  # webkit.org is the official download host per the vendor homepage
  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'
  license :mit

  stage_only true
end
