cask 'aws-vault' do
  version '4.5.0'
  sha256 'cd38a3fb54708d7b73877656a8db705235ff3a8fecd189066a58690b4bee1e6a'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
