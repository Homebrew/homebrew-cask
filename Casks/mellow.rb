cask 'mellow' do
  version '0.1.21'
  sha256 '2f071d1f19323e6f1f2d727fc978a67b133004188a7f74dd87a4d6504ee10c68'

  url "https://github.com/mellow-io/mellow/releases/download/v#{version}/Mellow-#{version}.dmg"
  appcast 'https://github.com/mellow-io/mellow/releases.atom'
  name 'Mellow'
  homepage 'https://github.com/mellow-io/mellow'

  app 'Mellow.app'

  zap trash: [
               '/Library/Application Support/Mellow',
               '~/Library/Logs/Mellow',
               '~/Library/Preferences/org.mellow.mellow.plist',
             ]
end
