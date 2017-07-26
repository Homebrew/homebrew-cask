cask 'automute' do
  version '1.1'
  sha256 '9c9991790d947cb75c3e21088392c5cfe0d4da0bbc631b5d10abe1fc20353130'

  url "https://github.com/Lorenzo45/AutoMute/releases/download/v#{version}/AutoMute.zip"
  appcast 'https://github.com/Lorenzo45/AutoMute/releases.atom',
          checkpoint: '34edd5b7f90bc080de072f0dc3c8fb3a089ee2f62b2650827bfec0ba5cf4c236'
  name 'AutoMute'
  homepage 'https://github.com/Lorenzo45/AutoMute'

  app 'AutoMute.app'
end
