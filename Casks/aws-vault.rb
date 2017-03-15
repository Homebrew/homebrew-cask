cask 'aws-vault' do
  version '3.7.1'
  sha256 '6ca2ac45cd227f38fb8374509f0ea0665fa0b34db5cb8724e238b87622dec459'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: 'f9d4579577b0f0a828d0c6da6801a956a6f69b2b44056ad5b21e348913d44600'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
