cask 'aws-vault' do
  version '3.7.1'
  sha256 '6ca2ac45cd227f38fb8374509f0ea0665fa0b34db5cb8724e238b87622dec459'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '62313e9bb0fce277f299e55b22312edcee15faf77bec61a21e88d4d722b3bd2b'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
