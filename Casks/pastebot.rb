cask 'pastebot' do
  version '2.0.b15'
  sha256 'ace5d843f9aaccdecafac628930a7d26f55ecbdeb6ac08f64e479769b6fb48a9'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: [
                "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
                "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
              ]
end
