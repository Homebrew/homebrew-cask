cask 'aws-vault' do
  version '4.6.2'
  sha256 '8328eead56d599fdb66ecb941e835249e028231a451e8d72ffa3975a608bf872'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
