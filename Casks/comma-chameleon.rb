cask 'comma-chameleon' do
  version '0.5.1'
  sha256 'd8508f4bc9b9f1fb61b354b3547b069ca8392a8ffa0d2ffcab5d98a178e8d20c'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: 'abed1e78fa64028a3bc5eaf814bc45ffe29d3e986adefaa1be957e9e1674925b'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
