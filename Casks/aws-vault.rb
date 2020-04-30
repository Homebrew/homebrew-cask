cask 'aws-vault' do
  version '5.4.2'
  sha256 '108256f5b50d6e1feea38bb6ea741fb7a1f0f132c6cc0f3de6d81f9e7daf6d0e'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
