class FontexplorerXPro < Cask
  version '4.0.2'
  sha256 '6e7d2bfb89e65e78a8551db705ffca86ec6a25371388ad2124b1cbf956f48472'

  url 'http://fex.linotype.com/download/mac/FontExplorerXPro402.dmg'
  homepage 'http://www.fontexplorerx.com/'
  license :unknown

  app 'FontExplorer X Pro.app'

  zap :delete => [
                  # todo: is this user-created content?
                  # '~/FontExplorer X',
                  '~/Library/Application Support/Linotype/FontExplorer X',
                 ]
end
