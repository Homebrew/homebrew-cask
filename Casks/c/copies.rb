cask "copies" do
  version "3.5.0"
  sha256 :no_check

  url "https://clipber.com/getmac"
  name "Copies"
  desc "Cross-platform cloud clipboard synchronization tool"
  homepage "https://home.clipber.com/"

  depends_on macos: ">= :high_sierra" 

  auto_updates true

  app "kuaitie.app"

  uninstall quit: "manager.clipboard.kuaitie"

  zap trash: [
    "~/Library/Caches/manager.clipboard.kuaitie",
    "~/Library/HTTPStorages/manager.clipboard.kuaitie",
    "~/Library/Preferences/manager.clipboard.kuaitie.plist",
    "~/Library/WebKit/manager.clipboard.kuaitie",
  ]
end