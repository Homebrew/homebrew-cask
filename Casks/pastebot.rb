cask 'pastebot' do
  version '2.0.b6'
  sha256 '3456ef932f2a701b9ac8c45f7eb4519b1976201c8ee6dead4fb3fd77bd288264'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'http://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
