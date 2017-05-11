cask 'socket-io-tester' do
  version '1.1.0'
  sha256 'fde5d254f993efe901c6292b85fce646eefdb4108c7e5007333ae310f053ad76'

  # github.com/AppSaloon/socket.io-tester was verified as official when first introduced to the cask
  url "https://github.com/AppSaloon/socket.io-tester/releases/download/v#{version}/socket-io-tester-darwin-x64.zip"
  appcast 'https://github.com/AppSaloon/socket.io-tester/releases.atom',
          checkpoint: '7e8912e2318f5619a1f16c3b61547123752a1cb0d358f4e639f9fd9ef4b03918'
  name 'socket-io-tester.app'
  homepage 'https://appsaloon.github.io/socket.io-tester/'

  app 'socket-io-tester.app'
end
