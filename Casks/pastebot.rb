cask 'pastebot' do
  version '2.0.b7'
  sha256 '01b0bfccd1904b8b087fe4aeb0a09d0791f0cf176e5090893381d4c42fb6904e'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
