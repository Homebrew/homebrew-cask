cask 'aws-vault' do
  version '5.0.1'
  sha256 '90b45082f1025095d64aaf637b73fedd0292276545df11492da65082ec8f288c'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
