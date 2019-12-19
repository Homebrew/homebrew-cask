cask 'aws-vault' do
  version '5.0.0'
  sha256 'b83182234f524e5aa901316b275fd58bc88463626f60cd71294e6a94ba23440f'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault'
end
