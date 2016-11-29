cask 'aws-vault' do
  version '3.6.0'
  sha256 'aead4c87af8eb13fe9a28ba955d77760b774176f1b286dd5c4a94ebda7a071c3'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
