cask 'go-agent' do
  version '17.7.0-5147'
  sha256 'd94731c867b678c9fc4b51ce7ddf60fa5e3474fe36d67fd15604f146689806af'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'f1cba4692ca4f0878fd95f276a55c43a4c2a435a96eae547070ac430689e19f1'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
