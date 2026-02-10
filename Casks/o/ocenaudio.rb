cask "ocenaudio" do
  version "3.17.1"
  sha256 :no_check

  url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_universal.dmg"
  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "ocenaudio.app"

  zap trash: [
    "~/Library/Application Support/ocenaudio",
    "~/Library/Caches/ocenaudio",
    "~/Library/Preferences/com.ocenaudio.plist",
    "~/Library/Saved Application State/com.ocenaudio.savedState",
  ]
end
