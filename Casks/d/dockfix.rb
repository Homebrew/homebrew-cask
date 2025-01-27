cask "dockfix" do
  version "3.5"
  sha256 :no_check

  url "https://lubker.dk/dockfix/download.php"
  name "DockFix"
  desc "Dock replacement"
  homepage "https://dockfix.lubker.dk/"

  livecheck do
    url "https://dockfix.lubker.dk/changelog/"
    regex(/<h\d[^>]*?>[^<]*?v?(\d+(?:\.\d+)+)[ <"]/i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DockFix.app"

  zap trash: [
    "~/Library/Caches/dk.FIrstForm.DockFix",
    "~/Library/HTTPStorages/dk.FIrstForm.DockFix",
    "~/Library/Preferences/dk.FIrstForm.DockFix.plist",
  ]
end
