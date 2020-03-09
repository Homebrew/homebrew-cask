cask 'mellow' do
  version '0.1.15'
  sha256 '309662ba2f276c209b0416be51781c6076079e03e974a5feb33c94bc9bc58c16'

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
