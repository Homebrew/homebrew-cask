cask "izip" do
  version "25.12"
  sha256 :no_check

  url "https://www.izip.com/izip.dmg",
      user_agent: :browser
  name "iZip"
  desc "App to manage ZIP, ZIPX, RAR, TAR, 7ZIP and other compressed files"
  homepage "https://www.izip.com/"

  livecheck do
    url "https://www.izip.com/updates"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "iZip.app"

  zap trash: [
    "~/Library/HTTPStorages/com.codeius.izip",
    "~/Library/Preferences/com.codeius.izip.plist",
    "~/Library/Saved Application State/com.codeius.izip.savedState",
  ]
end
