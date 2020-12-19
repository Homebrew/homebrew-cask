cask "find-empty-folders" do
  version "1.2.1.3.0"
  sha256 :no_check

  url "https://files.tempel.org/FindEmptyFolders/FindEmptyFolders.zip"
  appcast "https://www.tempel.org/FindEmptyFolders"
  name "Find Empty Folders"
  homepage "https://www.tempel.org/FindEmptyFolders"

  app "Find Empty Folders.app"
end
