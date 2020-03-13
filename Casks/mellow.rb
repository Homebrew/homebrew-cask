cask 'mellow' do
  version '0.1.16'
  sha256 'ab5b9dcc6b92ff2893f447b88c3c0e2bb76edc71773259788f89d74c0bb4b509'

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
