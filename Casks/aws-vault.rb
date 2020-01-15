cask 'aws-vault' do
  version '5.1.1'
  sha256 '257d3d9e886344583930ed662b8ffe8e6d57d41fd92fe24318d493c01b56740a'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
