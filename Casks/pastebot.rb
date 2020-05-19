cask 'pastebot' do
  version '2.3.0'
  sha256 '4e5f981d49da996cc4fb9ee04e443f20f4b1fb5012c742545f120f2ba8c2bc30'

  # tapbots.net/ was verified as official when first introduced to the cask
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
