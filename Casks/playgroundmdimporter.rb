cask 'playgroundmdimporter' do
  version '0.1.0'
  sha256 '15724e51ec59e647b1688618f418b549006c58f5a1d8fc04866ee48114aa2c85'

  url "https://github.com/norio-nomura/PlaygroundMDImporter/releases/download/#{version}/Playground.mdimporter-#{version}.zip"
  appcast 'https://github.com/norio-nomura/PlaygroundMDImporter/releases.atom',
          checkpoint: '7220165f1235ccc639906c3a34b75e4a1b49bb3a2d8aa07b22b4fbdbf1bf3f65'
  name 'PlaygroundMDImporter'
  homepage 'https://github.com/norio-nomura/PlaygroundMDImporter'

  artifact 'Playground.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/Playground.mdimporter"

  postflight do
    system 'mdimport', '-r', "#{ENV['HOME']}/Library/Spotlight/Playground.mdimporter"
  end
end
