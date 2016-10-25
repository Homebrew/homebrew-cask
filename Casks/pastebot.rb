cask 'pastebot' do
  version '2.0.b8'
  sha256 'c9244e65a49f83d0062e651bbf2641e5aa7d02a6c2fbca6fb242928706838086'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
