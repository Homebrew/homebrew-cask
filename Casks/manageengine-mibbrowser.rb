cask "manageengine-mibbrowser" do
  version "5.2,9229779"
  sha256 "c6b84158988af9a4d93de263b683e00a2aae9af9e8fbd54c7a22e0d9e9b56893"

  url "https://www.manageengine.com/products/mibbrowser-free-tool/#{version.csv.second}/ManageEngine_MibBrowser_FreeTool.dmg"
  name "ManageEngine MibBrowser"
  homepage "https://www.manageengine.com/products/mibbrowser-free-tool/"

  app "ManageEngine MibBrowser.app"
end
