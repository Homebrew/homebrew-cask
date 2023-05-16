cask "nozbe" do
  version "2023.18"
  sha256 "e6c0dc8b814257e6a11a415d8c47ad0fa19c7bf275c809ee635e8958f35f8f67"

  url "https://builds.nozbe.com/mac/#{version}/Nozbe.app.zip"
  name "Nozbe"
  desc "Project management app"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://nozbe.help/general/release-notes"
    regex(/id=["']newest["'][^>]*?>\s*version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "Nozbe.app"

  zap trash: [
    "~/Library/Application Support/Nozbe4",
    "~/Library/Caches/com.nozbe4mac",
    "~/Library/Caches/com.nozbe4mac.ShipIt",
    "~/Library/HTTPStorages/com.nozbe4mac",
    "~/Library/Preferences/com.nozbe4mac.plist",
    "~/Library/Saved Application State/com.nozbe4mac.savedState",
  ]
end
