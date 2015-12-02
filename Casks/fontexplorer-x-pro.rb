cask :v1 => 'fontexplorer-x-pro' do
  version '5.0.2'
  sha256 'ef86771fb2acf2eaa3c30b72d51594eda4ab2cd4c9a7454585184460d49b043a'

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
