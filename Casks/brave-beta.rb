cask 'brave-beta' do
  version '0.55.10'
  sha256 '60c029617a2ed6838ea2b7ac151067e43314d85a4c119db99354bb21d3e15042'

  url "https://github.com/brave/brave-browser/releases/download/v#{version}/Brave-Browser-Beta.dmg"
  appcast 'https://github.com/brave/brave-browser/releases.atom'
  name 'Brave Beta'
  homepage 'https://github.com/brave/brave-browser'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave Browser Beta.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
