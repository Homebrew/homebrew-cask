cask 'aws-vault' do
  version '3.4.0'
  sha256 'fa04d8593340f2b8b297a8b9728346aa0f83cc7c9b470c0b51cf26fb1db7fbeb'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-Darwin-x86_64"
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'
  license :mit

  container type: :naked

  binary 'aws-vault-Darwin-x86_64', target: 'aws-vault'
end
