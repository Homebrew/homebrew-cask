cask 'aws-vault' do
  version '4.6.3'
  sha256 'b199a772d3b4b6f31c5e9e67a47688b8a3bc73d89908e74deb324096fa0301a5'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
