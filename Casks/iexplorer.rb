cask 'iexplorer' do
  version '4.1.4'
  sha256 'e3cefd019406af7c787606840fb5146d688bb66b5df2688ed2759f6a0eba79e4'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
