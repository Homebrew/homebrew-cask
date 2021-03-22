cask "brisync" do
  version "1.3.1"
  sha256 "e7378405d50ff27ca8ee21150a6af1cbec7bd4c452518de0ebd6f8b981da5ad1"

  url "https://github.com/czarny/Brisync/releases/download/v#{version}/Brisync.zip"
  name "Brisync"
  desc "Utility to automatically control the brightness of external displays"
  homepage "https://github.com/czarny/Brisync/"

  depends_on macos: ">= :sierra"

  app "Brisync.app"

  zap trash: "~/.brisync.json"
end
