cask 'aws-vault' do
  version '5.4.4'
  sha256 '4b9d41808c9e9353128151a43ddd3ca842e5e94014e69c8cd96ef18548ebea7d'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
