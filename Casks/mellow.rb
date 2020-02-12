cask 'mellow' do
  version '0.1.11'
  sha256 'be8e0f5ad3b80be2aa1bd3a2a98e34be6518f371c8ee2e476c149909d71f8e96'

  url "https://github.com/mellow-io/mellow/releases/download/v#{version}/Mellow-#{version}.dmg"
  appcast 'https://github.com/mellow-io/mellow/releases.atom'
  name 'Mellow'
  homepage 'https://github.com/mellow-io/mellow'

  auto_updates true

  app 'Mellow.app'

  zap trash: [
               '/Library/Application Support/Mellow',
               '~/Library/Logs/Mellow',
               '~/Library/Preferences/org.mellow.mellow.plist',
             ]
end
