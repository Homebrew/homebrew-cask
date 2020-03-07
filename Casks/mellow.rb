cask 'mellow' do
  version '0.1.14'
  sha256 '343a269981a37a8696300f47ffd6086f6ab00afbb63eeeedd68909338b14e21a'

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
