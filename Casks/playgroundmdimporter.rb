cask 'playgroundmdimporter' do
  version '0.1.0'
  sha256 '15724e51ec59e647b1688618f418b549006c58f5a1d8fc04866ee48114aa2c85'

  url 'https://github.com/norio-nomura/PlaygroundMDImporter/releases/download/0.1.0/Playground.mdimporter-0.1.0.zip'
  name 'PlaygroundMDImporter'
  homepage 'https://github.com/norio-nomura/PlaygroundMDImporter'
  license :mit

  artifact 'Playground.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/Playground.mdimporter"
end
