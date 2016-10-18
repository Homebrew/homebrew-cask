cask 'aws-vault' do
  version '3.5.0'
  sha256 '76486ecee4543e1786891e29b8dc9c9eaaf281341821a10fa7a55bd628aafa69'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
