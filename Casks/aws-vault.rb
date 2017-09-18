cask 'aws-vault' do
  version '4.0.0'
  sha256 'd6b7f49503af2607be12e70be35da55d05fdd9269eba23f09e4e534d0a13eeb0'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: 'd51fb4d46c3337a84fa83aba696719cde153480ee56aa1191e67531baa6e5551'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
