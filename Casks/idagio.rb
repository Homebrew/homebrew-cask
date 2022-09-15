cask "idagio" do
  version "1.4.4"
  sha256 "082f1a87d5a18a1da89fd7018c57f43ba08aa992464fe6c72446032353f92846"

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name "IDAGIO"
  desc "Classical music streaming app"
  homepage "https://www.idagio.com/"

  livecheck do
    url "https://app.idagio.com/download"
    regex(/href=.*?IDAGIO[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  app "IDAGIO.app"

  zap trash: [
    "~/Library/Application Support/IDAGIO",
    "~/Library/Logs/IDAGIO",
    "~/Library/Preferences/com.idagio.desktop.plist",
    "~/Library/Saved Application State/com.idagio.desktop.savedState",
  ]
end
