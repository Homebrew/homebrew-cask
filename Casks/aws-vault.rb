cask 'aws-vault' do
  version '5.2.1'
  sha256 'db674affb2d48285498ab478fd4395f27ab815e85a9611db5182a60897217f83'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
