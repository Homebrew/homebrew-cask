cask 'aws-vault' do
  version '4.3.0'
  sha256 '8c3872ac9cd77e4ad5c6473e17bb9e6b315fdd16b4999ffb0aeca39bcd9e2322'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
