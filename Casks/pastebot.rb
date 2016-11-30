cask 'pastebot' do
  version '2.0.b14'
  sha256 'f20df8b31d2ef47858a0fff216e300edfe34730572f61f062d737e708f8189a2'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
