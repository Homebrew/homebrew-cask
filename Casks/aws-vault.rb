cask 'aws-vault' do
  version '4.4.1'
  sha256 '6c84a00b919629f153ad43a0889cc8f8d67708cfc85cce8bd6e98a57706368b0'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
