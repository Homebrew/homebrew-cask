cask 'aws-vault' do
  version '3.6.0'
  sha256 'aead4c87af8eb13fe9a28ba955d77760b774176f1b286dd5c4a94ebda7a071c3'

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64"
  appcast 'https://github.com/99designs/aws-vault/releases.atom',
          checkpoint: '72632fdb5d8302f33360e4d3dd65c0255679be1fc53e0a59f1d812a24ce3c988'
  name 'aws-vault'
  homepage 'https://github.com/99designs/aws-vault'

  container type: :naked

  binary 'aws-vault-darwin-amd64', target: 'aws-vault'
end
