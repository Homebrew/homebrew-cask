cask 'manageengine-mibbrowser' do
  version '5.2,9229779'
  sha256 '21c277bf2a242050e344c8954437c669171692e8e6c05eebf3cc13290b5fb253'

  url "https://www.manageengine.com/products/mibbrowser-free-tool/#{version.after_comma}/ManageEngine_MibBrowser_FreeTool.dmg"
  name 'ManageEngine MibBrowser'
  homepage 'https://www.manageengine.com/products/mibbrowser-free-tool/'

  app 'ManageEngine MibBrowser.app'
end
