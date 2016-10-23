cask 'qtox' do
  version '1.5.1'
  sha256 '44c05f1768e120716b92c96e956523cdc0144ff37b4f68a3fc8556e382864df7'

  # github.com/tux3/qTox was verified as official when first introduced to the cask
  url "https://github.com/tux3/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/tux3/qtox/releases.atom',
          checkpoint: 'e52d46cfa1c375744a0c5628f721c9ba9f91b967344d964d4122def35f42afd2'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
