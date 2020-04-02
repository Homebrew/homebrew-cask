cask 'awsx' do
  version '0.1'
  sha256 '415664d005bdbfd8f96bfbc41ad8d78d16c120ce0d2f26099e83d047298181e9'

  url "https://github.com/mertongngl/awsx/archive/v#{version}.zip"
  name 'awsx'
  homepage 'https://github.com/mertongngl/awsx/'
  binary "awsx-#{version}/awsx"
end
