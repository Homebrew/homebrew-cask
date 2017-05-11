cask 'socket-io-tester' do
  version '1.1.1'
  sha256 'd0d24270be25fdfc5f5ec703fbf57c5a88595540f0d4ee38d79bd49cee258ba1'

  # github.com/AppSaloon/socket.io-tester was verified as official when first introduced to the cask
  url "https://github.com/AppSaloon/socket.io-tester/releases/download/v#{version}/socket-io-tester-darwin-x64.zip"
  appcast 'https://github.com/AppSaloon/socket.io-tester/releases.atom',
          checkpoint: 'bd60343db134474587b697365fe1e0863454048e17a42da22a30180505f62a90'
  name 'socket-io-tester.app'
  homepage 'https://appsaloon.github.io/socket.io-tester/'

  app 'socket-io-tester.app'
end
