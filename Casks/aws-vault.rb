cask 'aws-vault' do
  version '3.7.0'
  sha256 'd17dfd93591efeaaceaca8d2eba8371f2ecc1543c4dc5d4441333c557330b04a'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: 'f1668dcf1b7e0b144d30ce76b3d1af473448bcc13579cf6a03a5419c41ecbe44'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
