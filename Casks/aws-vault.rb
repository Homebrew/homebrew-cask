cask 'aws-vault' do
  version '3.6.1'
  sha256 'bc2ee3e8fb0a2c22af45daa5b9ab92fe5557821547de092eef198e52ba0974c7'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '5661f088104d39db0b333c124a5195b4eaaf111cd175fee6c8720a98e4027aa1'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
