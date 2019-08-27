cask 'aws-vault' do
  version '4.6.4'
  sha256 '3c44825948dd15b0f55837343b404787f87081056cda2b5233348e0786eb4f81'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
