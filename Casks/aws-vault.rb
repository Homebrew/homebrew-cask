cask 'aws-vault' do
  version '5.4.0'
  sha256 '1df607d555cefc7d14c8b508f251e039ab1b849800497746a642844552d4ecc2'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
