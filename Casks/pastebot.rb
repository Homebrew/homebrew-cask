cask 'pastebot' do
  version '2.0.b12'
  sha256 'dc7054ab271e77bcd3445f7634d68d0c9c6ba7055ef58b1c9af60f6b3fb67325'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'https://tapbots.com/pastebot/beta/'

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
