cask 'aws-vault' do
  version '5.1.0'
  sha256 '6ef3227c9c5ea248d82cd23f72c23d4d8d5adebca83011cf2a772b5578cb370b'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
