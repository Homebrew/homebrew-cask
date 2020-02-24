cask 'aws-vault' do
  version '5.3.2'
  sha256 '99da6ced34d05a97a5560554d459b30049a5e320c0ea53ab5a11a4da0766ddff'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
