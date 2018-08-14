cask 'playgroundmdimporter' do
  version '0.1.0'
  sha256 '15724e51ec59e647b1688618f418b549006c58f5a1d8fc04866ee48114aa2c85'

  url "https://github.com/norio-nomura/PlaygroundMDImporter/releases/download/#{version}/Playground.mdimporter-#{version}.zip"
  appcast 'https://github.com/norio-nomura/PlaygroundMDImporter/releases.atom'
  name 'PlaygroundMDImporter'
  homepage 'https://github.com/norio-nomura/PlaygroundMDImporter'

  artifact 'Playground.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/Playground.mdimporter"

  postflight do
    system_command '/usr/bin/mdimport', args: ['-r', "#{ENV['HOME']}/Library/Spotlight/Playground.mdimporter"]
  end
end
