cask 'aws-vault' do
  version '4.7.1'
  sha256 '6028891bb34810ccd07d565e26930ed0da6f699daa50209a25dbafaffb06439c'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
