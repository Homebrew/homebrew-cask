cask 'aws-vault' do
  version '3.7.1'
  sha256 '6ca2ac45cd227f38fb8374509f0ea0665fa0b34db5cb8724e238b87622dec459'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '551c382ad68ef56dfb50b2502486419d9c70690258ea790618558b0378c0042d'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
