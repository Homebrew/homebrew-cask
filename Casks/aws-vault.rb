cask 'aws-vault' do
  version '4.7.0'
  sha256 '17e0622057417463d3f7d726f5f6199630b95790adb2ce68afd7060e6f5b07b4'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast 'https://github.com/99designs/aws-vault/releases.atom'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  binary 'aws-vault', target: 'aws-vault'
end
