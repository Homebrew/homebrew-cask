cask 'hipsterchat' do
  version '0.2.1'
  sha256 'efe6135fba92a437e18c4227569174f9505f91398946c9e8b0860f85b0c7d487'

  url "https://github.com/kvasir/hipsterchat/releases/download/v#{version}/HipsterChat-osx-#{version}.zip"
  appcast 'https://github.com/kvasir/hipsterchat/releases.atom',
          checkpoint: '6a3cbe6cdf14af38682f17c750d5387a5172dddda941b6dab70c2b91007d6ae3'
  name 'HipsterChat'
  homepage 'https://github.com/kvasir/hipsterchat'

  app 'HipsterChat.app'
end
