cask 'aws-vault' do
  version '5.3.1'
  sha256 '4cc078787ada287acae0bfc3cd0d0288e8c62e1534e5e2a9e6cf9cab9248f22d'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
