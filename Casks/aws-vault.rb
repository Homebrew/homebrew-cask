cask 'aws-vault' do
  version '4.5.1'
  sha256 '21b649ac7002979a03b4ee1b8b9cac58b5ba0326c3f912f1bf75998c7c477049'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
