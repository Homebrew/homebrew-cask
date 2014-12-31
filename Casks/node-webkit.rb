cask :v1 => 'node-webkit' do
  version '0.11.2'
  sha256 '7af89a5f025a91fec84944d435f136d69939ac10ef79b8d98536e4a05c453fcd'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'
  license :mit

  stage_only true
end
