cask "random-mouse-clicker" do
  version "6.3,1"
  sha256 :no_check

  url "https://www.murgaa.com/mac-random-mouse-clicker/download/RandomClicker.zip"
  name "Random Mouse Clicker"
  desc "Automate left, right and middle mouse button clicks"
  homepage "https://www.murgaa.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MurGaa Random Mouse Clicker.app"

  zap trash: [
    "~/Library/Caches/com.murgaa.Random-Mouse-Clicker-by-MurGaa-com",
    "~/Library/Containers/com.murgaa",
    "~/Library/HTTPStorages/com.murgaa.Random-Mouse-Clicker-by-MurGaa-com",
    "~/Library/Preferences/com.murgaa.Random-Mouse-Clicker-by-MurGaa-com.plist",
    "~/Library/Saved Application State/com.murgaa.Random-Mouse-Clicker-by-MurGaa-com.savedState",
  ]
end
