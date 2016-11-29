cask 'bob' do
  version '0.1.3'
  sha256 '2093de6354efeade9776a5764da2a0cc364efb3ea72e64cdfb1afcb412e2166d'

  url "https://github.com/casperstorm/Bob/releases/download/#{version}/backup-bob.app.zip"
  appcast 'https://github.com/casperstorm/Bob/releases.atom',
          checkpoint: '6559ed43d7584e608ddb571531d12b73690eb00b675a5b3ab112e02d7db526cb'
  name 'Bob'
  homepage 'https://github.com/casperstorm/Bob'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'backup-bob.app', target: 'Bob.app'
end
