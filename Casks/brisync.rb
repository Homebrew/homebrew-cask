cask "brisync" do
  version "1.3.0"
  sha256 "1814675b1114bcd48a96e39936d725b983b85d487a731a05c3e215d09fb28798"

  url "https://github.com/czarny/Brisync/releases/download/v#{version}/Brisync.zip"
  appcast "https://github.com/czarny/Brisync/releases.atom"
  name "Brisync"
  desc "Utility to automatically control the brightness of external displays"
  homepage "https://github.com/czarny/Brisync/"

  depends_on macos: ">= :sierra"

  app "Brisync.app"

  zap trash: "~/.brisync.json"
end
