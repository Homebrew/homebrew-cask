cask 'brave' do
  version '0.19.70'
  sha256 '0ea2b99bd8b421ea49679fd62dd11a1af5a6146502aa3af02fbb2238be05a9d2'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '5c3cfdc0162b55a329c55fc8d7218c7f3ccb10105f4458fa84e377686f66b957'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: '~/Library/Saved Application State/com.electron.brave.savedState',
      trash:  [
                '~/Library/Application Support/brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
