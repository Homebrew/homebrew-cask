cask 'aws-vault' do
  version '5.1.2'
  sha256 '7c121b2cf94a4cd9b73425b213feb4ff7e3b2512463f55bc401fd1795cca653b'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
