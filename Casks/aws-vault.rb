cask 'aws-vault' do
  version '4.6.0'
  sha256 'bba76d9a314cd69cc0bcf12d94bff4d1ff624d74b404b1e423f25ce97c05f854'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
