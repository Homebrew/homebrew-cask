cask 'pastebot' do
  version '2.2.1'
  sha256 '13842407492c88b9ff75e5c2a1172e9f4c5a9830fb241c5143469032db9249a8'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/'

  depends_on macos: '>= :high_sierra'

  app 'Pastebot.app'

  zap delete: [
                "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
                "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
              ]
end
