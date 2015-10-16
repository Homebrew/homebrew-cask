cask :v1 => 'fontexplorer-x-pro' do
  version '5.0.1'
  sha256 'e75369d862a186a75dcbb9d0f61a5f99f03bd1482de02f3e71ffaa29a0828b9c'

  url "http://fast.fontexplorerx.com/FontExplorerXPro#{version.delete('.')}.dmg"
  name 'FontExplorer X Pro'
  homepage 'https://www.fontexplorerx.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'FontExplorer X Pro.app'

  zap :delete => [
                  # todo: is this user-created content?
                  # '~/FontExplorer X',
                  '~/Library/Application Support/Linotype/FontExplorer X',
                 ]
end
