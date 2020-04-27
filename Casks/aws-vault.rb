cask 'aws-vault' do
  version '5.4.1'
  sha256 '411fd34b28891d9ef95f9e5ec454daf6f5e7f64a08a64d5395e214c89cd9d1be'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
