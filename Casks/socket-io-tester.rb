cask 'socket-io-tester' do
  version '1.2.2'
  sha256 '41f9ecde7b503c7f1e30f8d3c58a6b78d320eabc024627ec2fb9b55b01e997d1'

  # github.com/AppSaloon/socket.io-tester was verified as official when first introduced to the cask
  url "https://github.com/AppSaloon/socket.io-tester/releases/download/v#{version}/socket-io-tester-darwin-x64.zip"
  appcast 'https://github.com/AppSaloon/socket.io-tester/releases.atom'
  name 'socket-io-tester.app'
  homepage 'https://appsaloon.github.io/socket.io-tester/'

  app 'socket-io-tester-darwin-x64/socket-io-tester.app'
end
