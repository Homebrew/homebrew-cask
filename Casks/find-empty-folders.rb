cask "find-empty-folders" do
  version "1.3.1"
  sha256 :no_check

  url "https://files.tempel.org/FindEmptyFolders/FindEmptyFolders.zip"
  name "Find Empty Folders"
  desc "Finds empty folders"
  homepage "https://www.tempel.org/FindEmptyFolders"

  livecheck do
    url :homepage
    regex(/>\s*Current\s*Version:\s*v?(\d+(?:\.\d+)+)\s*/i)
  end

  app "Find Empty Folders.app"

  zap trash: "~/Library/Saved Application State/org.tempel.findemptyfolders.savedState"
end
