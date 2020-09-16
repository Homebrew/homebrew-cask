cask "brisync" do
  version "1.2.0"
  sha256 "859f937786b1f1275c18bfdd10693112b982aa1b974256d458e95e4aed8ef268"

  url "https://github.com/czarny/Brisync/releases/download/v#{version}/Brisync.zip"
  appcast "https://github.com/czarny/Brisync/releases.atom"
  name "Brisync"
  desc "Utility to automatically control the brightness of external displays"
  homepage "https://github.com/czarny/Brisync/"

  depends_on macos: ">= :sierra"

  app "Brisync.app"

  zap trash: "~/.brisync.json"
end
