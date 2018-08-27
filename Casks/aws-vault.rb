cask 'aws-vault' do
  version '4.2.1'
  sha256 '40c8cd6ad6d11537fe2e22e51394f9a58d17d5d9865bf8900dca250b9e757fca'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
