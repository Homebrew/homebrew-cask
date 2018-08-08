cask 'aws-okta' do
  version '0.19.0'
  sha256 '757403d7bb28cb06035d97b54f9d4e65dfafbd2e7380fc1aaa046a9ddf6b9c91'

  url "https://github.com/segmentio/aws-okta/releases/download/v#{version}/aws-okta-v#{version}-darwin-amd64"
  appcast 'https://github.com/segmentio/aws-okta/releases.atom'
  name 'aws-okta'
  homepage 'https://github.com/segmentio/aws-okta'

  container type: :naked

  binary "aws-okta-v#{version}-darwin-amd64", target: 'aws-okta'
end
