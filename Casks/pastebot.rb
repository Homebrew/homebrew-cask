cask 'pastebot' do
  version '2.0.b5'
  sha256 'adf2b84127278850081b3cd886da5137b0d48f26eaec8a38011d812460c68cb9'

  # tapbots.net/pastebot was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/PastebotBeta.zip"
  name 'Pastebot'
  homepage 'http://tapbots.com/pastebot/beta/'
  license :gratis

  app 'Pastebot.app'

  zap delete: "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac"
end
