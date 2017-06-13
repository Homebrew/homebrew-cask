cask 'iexplorer' do
  version '4.0.12'
  sha256 '54187525ee44681113d928f5eaddb5361ef9f85167d332281ed7a36bd26e71aa'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
