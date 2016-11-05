cask 'pastebot' do
  version '2.0.b10'
  sha256 '7e748d4391be7b541aee9a423592a19e683d8848fd91d2928d9ee72f69ec6065'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
