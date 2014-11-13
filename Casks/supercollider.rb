cask :v1 => 'supercollider' do
  version '3.6.6'
  sha256 '4cc59a3ab70cbac60ce64b0fb7b6b86e070456e8f597229b05057ea6c4e1edb9'

  url "https://downloads.sourceforge.net/project/supercollider/Mac%20OS%20X/3.6/SuperCollider-#{version}-OSX.dmg"
  homepage 'http://supercollider.sourceforge.net/'
  license :gpl

  app 'SuperCollider/SuperCollider.app'
end
