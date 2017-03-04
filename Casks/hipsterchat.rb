cask 'hipsterchat' do
  version '0.2.1'
  sha256 'efe6135fba92a437e18c4227569174f9505f91398946c9e8b0860f85b0c7d487'

  url "https://github.com/kvasir/hipsterchat/releases/download/v#{version}/HipsterChat-osx-#{version}.zip"
  appcast 'https://github.com/kvasir/hipsterchat/releases.atom',
          checkpoint: '285d3ff9dc41f4de1043f21c62f84e886d8ddf7f52188e018c9f9144ff5a4d96'
  name 'HipsterChat'
  homepage 'https://github.com/kvasir/hipsterchat'

  app 'HipsterChat.app'
end
