cask 'aws-vault' do
  version '4.2.0'
  sha256 'e27dafa59d2ecb65b4960f49d62f3da7368e1023082aa46f5ff7711a46ab520c'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '42f18efd96bbabf98539fe51e317525db700aa01e16386d6c5fb072d82888bee'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
