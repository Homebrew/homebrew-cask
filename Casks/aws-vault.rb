cask 'aws-vault' do
  version '4.6.1'
  sha256 '81e97fb532489429737ac06490e61aaa8e9911ce9885770aba9cad9b5db7a5f6'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
