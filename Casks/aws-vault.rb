cask 'aws-vault' do
  version '5.4.3'
  sha256 'e80870ef75baa6e920cd0ca511ab6dd46566f2ad5c19cb25e4737eac8b157241'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
