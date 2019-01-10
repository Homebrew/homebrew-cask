cask 'swamp' do
  version '0.9.1'
  sha256 '07e7e3cc9f28f4b20b37f21c1d08cb0e6fd5d7b82a4720206398516e3f164eee'

  url "https://github.com/felixb/swamp/releases/download/v#{version}/swamp_amd64"
  appcast 'https://github.com/felixb/swamp/releases.atom'
  name 'swamp'
  homepage 'https://github.com/felixb/swamp'

  binary 'swamp_amd64', target: 'swamp'
end
