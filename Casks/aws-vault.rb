cask 'aws-vault' do
  version '5.3.0'
  sha256 '1701a93a10fb47f58852ecd5e687abaded9a01e05e6817897a77d1bb8f894980'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
