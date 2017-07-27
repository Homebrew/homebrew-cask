cask 'bob' do
  version '0.1.3'
  sha256 '2093de6354efeade9776a5764da2a0cc364efb3ea72e64cdfb1afcb412e2166d'

  url "https://github.com/casperstorm/Bob/releases/download/#{version}/backup-bob.app.zip"
  appcast 'https://github.com/casperstorm/Bob/releases.atom',
          checkpoint: 'b0591d69b6767da5a16b38ed3e4e26a13324f46b1638b7d1bcf447a82814be0c'
  name 'Bob'
  homepage 'https://github.com/casperstorm/Bob'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'backup-bob.app', target: 'Bob.app'
end
