cask 'aws-vault' do
  version '4.1.0'
  sha256 '1b71e4d57b0fc0d1b2f2f932c46774535dbe55805fbd9e10f85d88db3d7bfc2b'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '3b662c4d371625ee5ef269159c69ddfa0dcb4b43a8dd139a03e2bdd37de1b7e3'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
