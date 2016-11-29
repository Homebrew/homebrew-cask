cask 'pastebot' do
  version '2.0.b13'
  sha256 '286fa510519f746cb2b7aa5b7240305cb2e950e07a4d9e64a5cbb3d368673675'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
