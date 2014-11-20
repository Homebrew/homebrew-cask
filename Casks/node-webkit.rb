cask :v1 => 'node-webkit' do
  version '0.11.0'
  sha256 'ada386b7d7531c565b6f4a48d90d1fc2cb075f838536df60fbb7730bd2487d72'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'
  license :mit

  stage_only true
end
