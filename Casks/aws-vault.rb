cask 'aws-vault' do
  version '5.2.0'
  sha256 'd7583ef9e2e875046628a38b9947068d0d41643ee1e0ad1c0e9c1c5066542c80'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
