cask "find-empty-folders" do
  version "1.3.1"
  sha256 "3b494e5015d16bf8658b0685f34a79098f23bb166f8881d27ae6bca6668ce77b"

  url "https://files.tempel.org/FindEmptyFolders/FindEmptyFolders-#{version}.zip"
  name "Find Empty Folders"
  desc "Finds empty folders"
  homepage "https://www.tempel.org/FindEmptyFolders"

  livecheck do
    url "https://files.tempel.org/FindEmptyFolders/"
    regex(/href=.*?FindEmptyFolders[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Find Empty Folders.app"

  zap trash: "~/Library/Saved Application State/org.tempel.findemptyfolders.savedState"
end
