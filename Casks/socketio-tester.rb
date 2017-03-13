cask 'socketio-tester' do
  version '1.0.1'
  sha256 '07cc306ba370a458966afd42bc287e556a40aa41a5d0c9aeab1719db0e648b9d'

  # github.com/AppSaloon/socket.io-tester was verified as official when first introduced to the cask
  url "https://github.com/AppSaloon/socket.io-tester/releases/download/v#{version}/socket-io-tester-darwin-x64.zip"
  name 'socket-io-tester.app'
  homepage 'https://appsaloon.github.io/socket.io-tester/'

  app 'socket-io-tester.app'
end
